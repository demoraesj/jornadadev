FUNCTION Main()

    LOCAL cIdade
    LOCAL cDependentes

    LOCAL nIdade
    LOCAL nDependentes
    LOCAL nPlano
    LOCAL nTotal

    ACCEPT "Digite sua idade: " TO cIdade
    ACCEPT "Digite a quantidade de dependentes: " TO cDependentes

    nIdade := Val(cIdade)
    nDependentes := Val(cDependentes)

    IF nIdade <= 25

        nPlano := 180

    ELSEIF nIdade <= 40

        nPlano := 260

    ELSEIF nIdade <= 60

        nPlano := 380

    ELSE

        nPlano := 520

    ENDIF

    nTotal := nPlano + (nDependentes * 90)

    QOut("Valor do plano: R$ " + Str(nPlano,10,2))
    QOut("Dependentes: " + Str(nDependentes,10,0))
    QOut("Valor total: R$ " + Str(nTotal,10,2))

RETURN NIL
