#include "protheus.ch"

USER FUNCTION STTIP003SALVAR()

    BEGIN SEQUENCE

        // Valida os campos obrigatorios
        IF Empty(M->Z1_CLIENTE)
            Break("Cliente obrigatorio.")
        ENDIF

        IF Empty(M->Z1_ASSUNTO)
            Break("Assunto obrigatorio.")
        ENDIF

        BeginTran()

        dbSelectArea("SZ1")

        IF RecLock("SZ1", .F.)

            SZ1->Z1_CLIENTE := M->Z1_CLIENTE
            SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO

            MsUnlock()

        ENDIF

        CommitTran()

        MsgInfo("Registro gravado com sucesso!", "Sucesso")

    RECOVER WITH oErro

        RollBackTran()

        MsgStop("Nao foi possivel gravar o registro.", "Erro")

        U_GRAVARLOG("STTIP003SALVAR", oErro)

    END SEQUENCE

RETURN NIL
