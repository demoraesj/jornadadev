#include "protheus.ch"

USER FUNCTION VALCLI001()

    IF Empty(M->ZA1_CLIENT) .OR. Empty(M->ZA1_LOJA)
        RETURN .T.
    ENDIF

    IF !ExistCpo("SA1", xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA, 1)

        MsgAlert("Cliente nao cadastrado na SA1!", "Atencao")
        RETURN .F.

    ENDIF

RETURN .T.

