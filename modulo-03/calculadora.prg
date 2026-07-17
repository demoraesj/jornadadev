FUNCTION Main()

    LOCAL cN1
    LOCAL cN2

    LOCAL nNum1
    LOCAL nNum2

    LOCAL nSoma
    LOCAL nSubtracao
    LOCAL nMultiplicacao
    LOCAL nDivisao
    
    ACCEPT "Digite um numero: " TO cN1
    ACCEPT "Digite outro numero: " TO cN2

    nNum1 := Val(cN1)
    nNum2 = Val(cN2)

    nSoma := nNum1 + nNum2
    nSubtracao := nNum1 - nNum2
    nMultiplicacao := nNum1 * nNum2

    QOut ("Soma: " + Str(nSoma))
    QOut ("Subtracao: " + Str(nSubtracao))
    QOut ("Multiplicacao: " + Str(nMultiplicacao))

    IF nNum2 <> 0
        nDivisao := nNum1 / nNum2
        QOut("Divisao: " + Str(nDivisao))
    ELSE
        QOut("Erro: Divisao por zero")
    ENDIF

RETURN NIL
