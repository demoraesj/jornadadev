FUNCTION Main()

    LOCAL cNumero
    LOCAL nNumero

    WHILE .T.

        ACCEPT "Digite um numero (negativo para sair): " TO cNumero

        nNumero := Val(cNumero)

        IF nNumero < 0
            EXIT
        ENDIF

        QOut("Dobro: " + Str(nNumero * 2,10,0))

    ENDDO

    QOut("Programa encerrado.")

RETURN NIL
