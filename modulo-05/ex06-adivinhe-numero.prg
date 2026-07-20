FUNCTION Main()

    LOCAL nSecreto
    LOCAL nPalpite
    LOCAL cPalpite
    LOCAL nI

    nSecreto := HB_RandomInt(1, 100)

    QOut("=== JOGO: ADIVINHE O NUMERO ===")
    QOut("Voce tem 7 tentativas para acertar!")

    FOR nI := 1 TO 7

        ACCEPT "Tentativa " + Str(nI,1,0) + ": " TO cPalpite

        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto

            QOut("Parabens! Voce acertou!")
            EXIT

        ELSEIF nPalpite < nSecreto

            QOut("O numero secreto e MAIOR.")

        ELSE

            QOut("O numero secreto e MENOR.")

        ENDIF

    NEXT

    IF nPalpite <> nSecreto

        QOut("")
        QOut("Suas tentativas acabaram!")
        QOut("O numero secreto era: " + Str(nSecreto,3,0))

    ENDIF

RETURN NIL
