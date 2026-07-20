FUNCTION Main()

    LOCAL cNum1
    LOCAL cNum2
    LOCAL cOperacao

    LOCAL nNum1
    LOCAL nNum2
    LOCAL nResultado

    ACCEPT "Digite o primeiro numero: " TO cNum1
    ACCEPT "Digite o segundo numero: " TO cNum2
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

    nNum1 := Val(cNum1)
    nNum2 := Val(cNum2)

    DO CASE

    CASE cOperacao == "+"
        nResultado := nNum1 + nNum2
        QOut("Resultado: " + Str(nResultado,10,2))

    CASE cOperacao == "-"
        nResultado := nNum1 - nNum2
        QOut("Resultado: " + Str(nResultado,10,2))

    CASE cOperacao == "*"
        nResultado := nNum1 * nNum2
        QOut("Resultado: " + Str(nResultado,10,2))

    CASE cOperacao == "/"

        IF nNum2 == 0
            QOut("Erro: divisao por zero!")
        ELSE
            nResultado := nNum1 / nNum2
            QOut("Resultado: " + Str(nResultado,10,2))
        ENDIF

    CASE cOperacao == "^"
        nResultado := nNum1 ^ nNum2
        QOut("Resultado: " + Str(nResultado,10,2))

    CASE Upper(cOperacao) == "R"

        IF nNum1 < 0
            QOut("Erro: nao existe raiz quadrada de numero negativo.")
        ELSE
            nResultado := Sqrt(nNum1)
            QOut("Raiz quadrada: " + Str(nResultado,10,2))
        ENDIF

    OTHERWISE
        QOut("Operacao invalida!")

    ENDCASE

RETURN NIL
