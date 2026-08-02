#include "protheus.ch"

USER FUNCTION STTIP001()

    PRIVATE cCadastro := "Pets"

    dbSelectArea("ZA1")
    dbSetOrder(1)

    // versão menor pelos erros, decisão em aula! 
    AxCadastro("ZA1", "Pets")

RETURN NIL
