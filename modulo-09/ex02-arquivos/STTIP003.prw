// ============================================
// STTIP003.PRW
// Cadastro de Contatos com mBrowse
// ============================================

#include "protheus.ch"

USER FUNCTION STTIP003()

    LOCAL cFiltro := ""
    LOCAL aColors

    PRIVATE cCadastro := "Cadastro de Contatos"

    PRIVATE aRotina := {;
        {"Pesquisar",  "AxPesqui", 0, 1},;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir",    "AxInclui", 0, 3},;
        {"Alterar",    "AxAltera", 0, 4},;
        {"Excluir",    "AxDeleta", 0, 5},;
        {"Interacoes", "U_STTIP004", 0, 6}; // Abre as interacoes do contato selecionado
    }

    // Define as cores de acordo com a data do cadastro
    // Verde: contato cadastrado nos ultimos 7 dias
    // Amarelo: entre 8 e 30 dias
    // Vermelho: acima de 30 dias

    aColors := {;
        {"SZ1->Z1_DATA >= dDataBase - 7",  "BR_GREEN"},;
        {"SZ1->Z1_DATA >= dDataBase - 30", "BR_YELLOW"},;
        {".T.",                            "BR_RED"};
    }

    // Seleciona a tabela e posiciona no primeiro indice
    dbSelectArea("SZ1")
    dbSetOrder(1)
    dbSeek(xFilial("SZ1"))

    // Exibe o cadastro utilizando o mBrowse
    mBrowse(1, 1, 22, 75, "SZ1", , , , , , aColors, , , , , .F., , , cFiltro)

RETURN NIL
