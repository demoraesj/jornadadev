#include "protheus.ch"

/*/{Protheus.doc} STTZZLIB
Biblioteca de funções utilitárias reutilizáveis do projeto.
@type Function
@author João Pedro Pereira de Moraes
@since 2026
/*/

/*/{Protheus.doc} NomeFornecedor
Retorna o nome do fornecedor a partir do código e loja.

@param cFornec Character Código do fornecedor
@param cLoja   Character Loja do fornecedor
@return Character Nome do fornecedor
/*/
Static Function NomeFornecedor(cFornec, cLoja)

    Local cNome := ""

    Default cFornec := ""
    Default cLoja   := ""

    If !Empty(cFornec)
        cNome := Posicione("SA2", 1, xFilial("SA2") + cFornec + cLoja, "A2_NOME")
    EndIf

Return cNome

/*/{Protheus.doc} NomeProduto
Retorna a descrição do produto.

@param cCodProd Character Código do produto
@return Character Descrição do produto
/*/
Static Function NomeProduto(cCodProd)

    Local cDesc := ""

    Default cCodProd := ""

    If !Empty(cCodProd)
        cDesc := Posicione("SB1", 1, xFilial("SB1") + cCodProd, "B1_DESC")
    EndIf

Return cDesc

/*/{Protheus.doc} PercNaoConforme
Calcula o percentual de não conformidade.

@param nQtdOk Numeric Quantidade conforme
@param nQtdNaoOk Numeric Quantidade não conforme
@return Numeric Percentual
/*/
Static Function PercNaoConforme(nQtdOk, nQtdNaoOk)

    Local nPerc := 0

    Default nQtdOk    := 0
    Default nQtdNaoOk := 0

    If (nQtdOk + nQtdNaoOk) > 0
        nPerc := (nQtdNaoOk / (nQtdOk + nQtdNaoOk)) * 100
    EndIf

Return nPerc

/*/{Protheus.doc} CertificadoVencendo
Verifica se um certificado está dentro do prazo de aviso.

@param dDataVenc Date Data de vencimento
@param nDiasAviso Numeric Dias de antecedência
@return Logical
/*/
Static Function CertificadoVencendo(dDataVenc, nDiasAviso)

    Local lVencendo := .F.
    Local dHoje     := Date()

    Default dDataVenc  := dHoje
    Default nDiasAviso := 30

    If !Empty(dDataVenc)
        lVencendo := (dDataVenc >= dHoje .And. ;
                      dDataVenc <= (dHoje + nDiasAviso))
    EndIf

Return lVencendo

/*/{Protheus.doc} GravarLogTCC
Grava mensagens de log do projeto.

@param cMensagem Character Mensagem do log
/*/
User Function GravarLogTCC(cMensagem)

    Default cMensagem := ""

    ConOut("[STTZZLIB] " + ;
           DToC(Date()) + " " + ;
           Time() + " - " + ;
           cMensagem)

Return Nil
