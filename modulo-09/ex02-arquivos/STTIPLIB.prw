// ============================================
// STTIPLIB.PRW
// Funcoes auxiliares do projeto
// ============================================

#include "protheus.ch"

// --------------------------------------------
// NomeCliente
// Busca o nome do cliente na SA1
// --------------------------------------------
STATIC FUNCTION NomeCliente(cCodigo, cLoja)

    LOCAL cNome := ""

    IF Empty(cCodigo)
        RETURN ""
    ENDIF

    cNome := POSICIONE("SA1", 1, xFilial("SA1") + cCodigo + cLoja, "A1_NOME")

RETURN AllTrim(cNome)


// --------------------------------------------
// ProxCodigoSZ1
// Retorna o proximo codigo da tabela SZ1
// --------------------------------------------
STATIC FUNCTION ProxCodigoSZ1()

RETURN GetSXENum("SZ1", "Z1_CODIGO")


// --------------------------------------------
// ProxSequenSZ2
// Gera a proxima sequencia para o contato
// --------------------------------------------
STATIC FUNCTION ProxSequenSZ2(cContato)

    LOCAL nMaior := 0

    dbSelectArea("SZ2")
    dbSetOrder(1)
    dbSeek(xFilial("SZ2") + cContato)

    DO WHILE !Eof() .AND. ;
             SZ2->Z2_FILIAL == xFilial("SZ2") .AND. ;
             SZ2->Z2_CONTAT == cContato

        nMaior := Max(nMaior, Val(SZ2->Z2_SEQUEN))

        dbSkip()

    ENDDO

RETURN StrZero(nMaior + 1, 3)


// --------------------------------------------
// DescTipoInteracao
// Retorna a descricao do tipo informado
// --------------------------------------------
STATIC FUNCTION DescTipoInteracao(cTipo)

    LOCAL cDescricao := ""

    DO CASE

    CASE cTipo == "E"
        cDescricao := "E-mail"

    CASE cTipo == "L"
        cDescricao := "Ligacao"

    CASE cTipo == "R"
        cDescricao := "Reuniao"

    CASE cTipo == "V"
        cDescricao := "Visita"

    CASE cTipo == "W"
        cDescricao := "WhatsApp"

    ENDCASE

RETURN cDescricao


// --------------------------------------------
// GRAVARLOG
// Salva os detalhes do erro em um arquivo
// --------------------------------------------
USER FUNCTION GRAVARLOG(cFuncao, oErro)

    LOCAL cArquivo := "\logs\advpl_" + DToS(Date()) + ".log"
    LOCAL nHandle := 0
    LOCAL cTexto := ""

    cTexto := DToS(Date()) + " " + Time() + " | "
    cTexto += cFuncao + " | "
    cTexto += cUserName + " | "
    cTexto += "Empresa: " + cEmpAnt + " Filial: " + cFilAnt + " | "

    IF oErro != NIL

        cTexto += "Erro: " + oErro:Description + " | "
        cTexto += "Funcao: " + oErro:ProcName + ":"
        cTexto += cValToChar(oErro:ProcLine) + " | "
        cTexto += "Subsistema: " + oErro:SubSystem + " | "
        cTexto += "Operacao: " + oErro:Operation

    ELSE

        cTexto += "Gravacao interrompida por validacao."

    ENDIF

    nHandle := FOpen(cArquivo, FO_READWRITE + FO_SHARED)

    IF nHandle < 0
        nHandle := FCreate(cArquivo)
    ENDIF

    IF nHandle >= 0

        FSeek(nHandle, 0, FS_END)
        FWrite(nHandle, cTexto + Chr(13) + Chr(10))
        FClose(nHandle)

    ENDIF

RETURN NIL
