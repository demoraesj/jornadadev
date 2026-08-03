#include "protheus.ch"

USER FUNCTION STTIP003SALVAR()

    LOCAL lSucesso := .T.
    LOCAL oErro := NIL

    BeginTran()

    BEGIN SEQUENCE

        // Valida os campos obrigatorios
        IF Empty(M->Z1_CLIENTE)
            MsgStop("Informe o cliente.", "Atencao")
            lSucesso := .F.
            Break
        ENDIF

        IF Empty(M->Z1_ASSUNTO)
            MsgStop("Informe o assunto.", "Atencao")
            lSucesso := .F.
            Break
        ENDIF

        // Grava os dados
        IF RecLock("SZ1", .F.)

            SZ1->Z1_CLIENTE := M->Z1_CLIENTE
            SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO

            MsUnlock()

        ENDIF

    RECOVER USING oErro

        lSucesso := .F.

        RollBackTran()

        MsgStop("Ocorreu um erro ao salvar os dados.", "Erro")

        U_GRAVARLOG("STTIP003SALVAR", oErro)

    END SEQUENCE

    // Finaliza a transacao
    IF lSucesso
        CommitTran()
    ELSE
        RollBackTran()
    ENDIF

RETURN lSucesso
