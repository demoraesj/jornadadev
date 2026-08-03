// ============================================
// STTIP004.PRW
// Cadastro de Interacoes (SZ2)
// Exibe apenas as interacoes do contato selecionado
// ============================================

#include "protheus.ch"

USER FUNCTION STTIP004()

    LOCAL cCodigo := SZ1->Z1_CODIGO
    LOCAL cFiltro := ""

    PRIVATE cCadastro := "Interacoes - Contato " + AllTrim(cCodigo)
    PRIVATE aIndex := {}
    PRIVATE lFiltro := .F.

    PRIVATE aRotina := {;
        {"Pesquisar",  "AxPesqui", 0, 1},;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir",    "AxInclui", 0, 3},;
        {"Alterar",    "AxAltera", 0, 4},;
        {"Excluir",    "AxDeleta", 0, 5};
    }

    // Monta o filtro utilizando o codigo do contato selecionado
    cFiltro := "Z2_CONTAT == '" + cCodigo + "'"

    dbSelectArea("SZ2")
    dbSetOrder(1)

    // Aplica o filtro antes de abrir o browse
    FilBrowse("SZ2", @aIndex, @cFiltro, .F.)
    lFiltro := .T.

    dbSelectArea("SZ2")
    dbGoTop()

    // Exibe somente as interacoes do contato
    mBrowse(1, 1, 22, 75, "SZ2")

    // Remove o filtro ao sair da rotina
    IF lFiltro
        EndFilBrw("SZ2", @aIndex)
    ENDIF

RETURN NIL
