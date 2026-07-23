FUNCTION Main()

    LOCAL aCarrinho := {}
    LOCAL cNome
    LOCAL cPreco
    LOCAL nPreco
    LOCAL cResposta := "S"
    LOCAL nI
    LOCAL nTotal := 0

    DO WHILE Upper(cResposta) == "S"

        ACCEPT "Nome do produto: " TO cNome
        ACCEPT "Preco do produto: " TO cPreco

        nPreco := Val(cPreco)

        AAdd(aCarrinho, { cNome, nPreco })

        ACCEPT "Adicionar outro produto? (S/N): " TO cResposta

        cResposta := Upper(AllTrim(cResposta))

    ENDDO

    QOut("")
    QOut("===== CARRINHO =====")

    FOR nI := 1 TO Len(aCarrinho)

        QOut("Produto: " + aCarrinho[nI][1])
        QOut("Preco: R$ " + Str(aCarrinho[nI][2],10,2))

        nTotal += aCarrinho[nI][2]

    NEXT

    QOut("")
    QOut("Total: R$ " + Str(nTotal,10,2))

RETURN NIL
