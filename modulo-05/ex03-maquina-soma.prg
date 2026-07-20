FUNCTION Main()

    LOCAL cNumero
    LOCAL nNumero

    LOCAL nTotal := 0
    LOCAL nQtd := 0

    WHILE .T.

        ACCEPT "Digite um numero (0 para sair): " TO cNumero

        nNumero := Val(cNumero)

        IF nNumero == 0
            EXIT
        ENDIF

        nTotal := nTotal + nNumero
        nQtd++

    ENDDO

    QOut("Soma total: " + Str(nTotal,10,2))
    QOut("Quantidade de valores: " + Str(nQtd,10,0))

RETURN NIL
