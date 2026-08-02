#include "protheus.ch"

USER FUNCTION STTIP002()

    PRIVATE cCadastro := "Pets"

    PRIVATE cFiltro := "Month(ZA1->ZA1_DATA) == Month(dDataBase) .AND. Year(ZA1->ZA1_DATA) == Year(dDataBase)"

    PRIVATE aRotina := {;
        {"Pesquisar",      "AxPesqui",      0, 1},;
        {"Visualizar",     "AxVisual",      0, 2},;
        {"Incluir",        "AxInclui",      0, 3},;
        {"Alterar",        "AxAltera",      0, 4},;
        {"Excluir",        "AxDeleta",      0, 5},;
        {"Remover Filtro", "U_SEMFILTRO",   0, 6};
    }

    dbSelectArea("ZA1")
    dbSetOrder(1)

    mBrowse(1, 1, 22, 75, "ZA1",,,,,,,,, cFiltro)

RETURN NIL


USER FUNCTION SEMFILTRO()

    dbSelectArea("ZA1")
    dbSetOrder(1)

    mBrowse(1, 1, 22, 75, "ZA1")

RETURN NIL
