FUNCTION Main()

    LOCAL aNumeros := {}
    LOCAL cNumero
    LOCAL nNumero
    LOCAL nI

    FOR nI := 1 TO 10

        ACCEPT "Digite o " + LTrim(Str(nI)) + " numero: " TO cNumero

        nNumero := Val(cNumero)

        AAdd(aNumeros, nNumero)

    NEXT

    BubbleSort(aNumeros)

    QOut("")
    QOut("Numeros em ordem crescente:")

    FOR nI := 1 TO Len(aNumeros)

        QOut(aNumeros[nI])

    NEXT

RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL nI
    LOCAL nJ
    LOCAL nTemp

    FOR nI := 1 TO Len(aVetor) - 1

        FOR nJ := 1 TO Len(aVetor) - nI

            IF aVetor[nJ] > aVetor[nJ + 1]

                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp

            ENDIF

        NEXT

    NEXT

RETURN NIL
