FUNCTION Main()

    LOCAL nNum1
    LOCAL nNum2
    LOCAL cOperacao
    LOCAL nResultado

    lerNumeros(@nNum1, @nNum2, @cOperacao) // Passa as variaveis por referencia para que a funcao preencha seus valores

    nResultado := calcular(nNum1, nNum2, cOperacao)

    mostrarResultado(nResultado)

RETURN NIL



FUNCTION lerNumeros(nNum1, nNum2, cOperacao)

    LOCAL cNum1
    LOCAL cNum2

    ACCEPT "Digite o primeiro numero: " TO cNum1
    ACCEPT "Digite o segundo numero: " TO cNum2
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

    nNum1 := Val(cNum1)
    nNum2 := Val(cNum2)

RETURN NIL



FUNCTION calcular(nNum1, nNum2, cOperacao)

    LOCAL nResultado

    DO CASE

    CASE cOperacao == "+"
        nResultado := nNum1 + nNum2

    CASE cOperacao == "-"
        nResultado := nNum1 - nNum2

    CASE cOperacao == "*"
        nResultado := nNum1 * nNum2

    CASE cOperacao == "/"

        IF nNum2 == 0
            RETURN .F.
        ENDIF

        nResultado := nNum1 / nNum2

    CASE cOperacao == "^"
        nResultado := nNum1 ^ nNum2

    CASE Upper(cOperacao) == "R"

        IF nNum1 < 0
            RETURN .F.
        ENDIF

        nResultado := Sqrt(nNum1)

    OTHERWISE
        RETURN .F.

    ENDCASE

RETURN nResultado



FUNCTION MostrarResultado(nResultado)

    IF ValType(nResultado) == "L" // Quando calcular retorna .F., exibe a mensagem de erro
        QOut("Erro na operacao.")
    ELSE
        QOut("Resultado: " + Str(nResultado,10,2))
    ENDIF

RETURN NIL
