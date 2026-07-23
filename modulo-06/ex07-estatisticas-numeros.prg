FUNCTION Main()

    LOCAL aNumeros := {}
    LOCAL nNumero
    LOCAL nI
    LOCAL nSoma := 0
    LOCAL nMedia

    FOR nI := 1 TO 10

        ACCEPT "Digite o " + Str(nI,2,0) + "º numero: " TO nNumero

        nNumero := Val(nNumero)

        AAdd(aNumeros, nNumero)

    NEXT

    ASort(aNumeros)

    QOut("")
    QOut("===== NUMEROS EM ORDEM CRESCENTE =====")

    FOR nI := 1 TO Len(aNumeros)

        QOut(Str(aNumeros[nI]))

        nSoma += aNumeros[nI]

    NEXT

    nMedia := nSoma / Len(aNumeros)

    QOut("")
    QOut("===== ESTATISTICAS =====")
    QOut("Soma        : " + Str(nSoma))
    QOut("Media       : " + Str(nMedia,10,2))
    QOut("Menor numero: " + Str(aNumeros[1]))
    QOut("Maior numero: " + Str(aNumeros[Len(aNumeros)]))

RETURN NIL
