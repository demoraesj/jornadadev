FUNCTION Main()

    LOCAL aProdutos := {}
    LOCAL cOpcao

    DO WHILE .T.

        CLS

        QOut("===== CONTROLE DE ESTOQUE =====")
        QOut("")
        QOut("1 - Cadastrar produto")
        QOut("2 - Listar produtos")
        QOut("3 - Entrada de estoque")
        QOut("4 - Saida de estoque")
        QOut("5 - Buscar produto")
        QOut("6 - Relatorio")
        QOut("7 - Sair")
        QOut("")

        ACCEPT "Opcao: " TO cOpcao

        DO CASE

        CASE Val(cOpcao) == 1

            CadastrarProduto(aProdutos)

        CASE Val(cOpcao) == 2

            ListarProdutos(aProdutos)

        CASE Val(cOpcao) == 3

            EntradaEstoque(aProdutos)

        CASE Val(cOpcao) == 4

            SaidaEstoque(aProdutos)

        CASE Val(cOpcao) == 5

            BuscarMenu(aProdutos)

        CASE Val(cOpcao) == 6

            Relatorio(aProdutos)

        CASE Val(cOpcao) == 7

            EXIT

        OTHERWISE

            QOut("Opcao invalida.")

        ENDCASE

        IF Val(cOpcao) <> 7
            Inkey(0)
        ENDIF

    ENDDO

RETURN NIL


FUNCTION BuscarMenu(aProdutos)

    LOCAL cCodigo
    LOCAL nPos

    ACCEPT "Codigo do produto: " TO cCodigo

    nPos := BuscarProduto(aProdutos, Val(cCodigo))

    IF nPos == 0

        QOut("Produto nao encontrado.")

    ELSE

        QOut("")
        QOut("Codigo.....: " + Str(aProdutos[nPos][1]))
        QOut("Nome.......: " + aProdutos[nPos][2])
        QOut("Quantidade.: " + Str(aProdutos[nPos][3]))
        QOut("Preco......: R$ " + LTrim(Str(aProdutos[nPos][4],10,2)))

    ENDIF

RETURN NIL
