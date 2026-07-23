FUNCTION CadastrarProduto(aProdutos)

    LOCAL cCodigo
    LOCAL cNome
    LOCAL cQuantidade
    LOCAL cPreco

    ACCEPT "Codigo: " TO cCodigo
    ACCEPT "Nome: " TO cNome
    ACCEPT "Quantidade: " TO cQuantidade
    ACCEPT "Preco: " TO cPreco

    AAdd(aProdutos, { ;
        Val(cCodigo), ;
        cNome, ;
        Val(cQuantidade), ;
        Val(cPreco) })

RETURN NIL


FUNCTION ListarProdutos(aProdutos)

    LOCAL nI

    IF Len(aProdutos) == 0
        QOut("Nenhum produto cadastrado.")
        RETURN NIL
    ENDIF

    FOR nI := 1 TO Len(aProdutos)

        QOut("-------------------------")
        QOut("Codigo.....: " + Str(aProdutos[nI][1]))
        QOut("Nome.......: " + aProdutos[nI][2])
        QOut("Quantidade.: " + Str(aProdutos[nI][3]))
        QOut("Preco......: R$ " + LTrim(Str(aProdutos[nI][4],10,2)))

    NEXT

RETURN NIL


FUNCTION BuscarProduto(aProdutos,nCodigo)

    LOCAL nI

    FOR nI := 1 TO Len(aProdutos)

        IF aProdutos[nI][1] == nCodigo
            RETURN nI
        ENDIF

    NEXT

RETURN 0


FUNCTION EntradaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL cQtd
    LOCAL nPos

    ACCEPT "Codigo do produto: " TO cCodigo

    nPos := BuscarProduto(aProdutos,Val(cCodigo))

    IF nPos == 0

        QOut("Produto nao encontrado.")

    ELSE

        ACCEPT "Quantidade de entrada: " TO cQtd

        aProdutos[nPos][3] += Val(cQtd)

        QOut("Estoque atualizado.")

    ENDIF

RETURN NIL


FUNCTION SaidaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL cQtd
    LOCAL nPos
    LOCAL nQuantidade

    ACCEPT "Codigo do produto: " TO cCodigo

    nPos := BuscarProduto(aProdutos,Val(cCodigo))

    IF nPos == 0

        QOut("Produto nao encontrado.")

    ELSE

        ACCEPT "Quantidade de saida: " TO cQtd

        nQuantidade := Val(cQtd)

        IF aProdutos[nPos][3] >= nQuantidade

            aProdutos[nPos][3] -= nQuantidade

            QOut("Saida realizada.")

        ELSE

            QOut("Quantidade insuficiente.")

        ENDIF

    ENDIF

RETURN NIL


FUNCTION Relatorio(aProdutos)

    LOCAL nI
    LOCAL nValor
    LOCAL nTotal := 0

    IF Len(aProdutos) == 0

        QOut("Nenhum produto cadastrado.")

        RETURN NIL

    ENDIF

    FOR nI := 1 TO Len(aProdutos)

        nValor := aProdutos[nI][3] * aProdutos[nI][4]

        QOut("-------------------------")
        QOut(aProdutos[nI][2])
        QOut("Valor em estoque: R$ " + LTrim(Str(nValor,10,2)))

        nTotal += nValor

    NEXT

    QOut("")
    QOut("Total geral: R$ " + LTrim(Str(nTotal,10,2)))

RETURN NIL
