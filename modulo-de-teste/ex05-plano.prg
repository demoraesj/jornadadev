FUNCTION Main()

    LOCAL cIdade
    LOCAL cDependente

    LOCAL nIdade
    LOCAL nDependente
    
    LOCAL nTotalDependente
    LOCAL nValorDependente := 90
    LOCAL nValor
    LOCAL nTotal 

    ACCEPT "Digite sua idade: " TO cIdade
    ACCEPT "Quantos dependentes: " TO cDependente

    nIdade := Val(cIdade)
    nDependente := Val(cDependente)

    IF nIdade >= 0 .AND. nIdade <= 25
        nValor := 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValor := 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValor := 380
    ELSE
        nValor := 520
    ENDIF
    
    nTotalDependente := nValorDependente * nDependente

    nTotal := nValor + nTotalDependente

    QOut("Idade: " + Str(nIdade))
    QOut("Valor para idade: " + Str(nValor))

    QOut("Numero de dependentes: " + Str(nDependente))
    QOut("Valor de dependentes: " + Str(nTotalDependente))

    QOut("Valor total: " + Str(nTotal))
    
RETURN NIL
