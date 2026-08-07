FUNCTION Main()
    
    LOCAL nSalario
    LOCAL nNewSalario
    LOCAL cSalario

    ACCEPT "Digite o salario para descobrir o reajuste: " TO cSalario

    nSalario := Val(cSalario)

    IF nSalario < 1000
        nNewSalario := nSalario * 1.15
        QOut("Salario atual: " + Str(nSalario, 10, 2))
        QOut("Novo salario: " + Str(nNewSalario, 10, 2))

    ELSEIF nSalario >= 1000 .AND. nSalario < 2000
        nNewSalario := nSalario * 1.12
        QOut("Salario atual: " + Str(nSalario, 10, 2))
        QOut("Novo salario: " + Str(nNewSalario, 10, 2))

    ELSEIF nSalario >= 2000 .AND. nSalario <4000
        nNewSalario := nSalario * 1.08
        QOut("Salario atual: " + Str(nSalario, 10, 2))
        QOut("Novo salario: " + Str(nNewSalario, 10, 2))

    ELSE
        nNewSalario := nSalario * 1.05
        QOut("Salario atual: " + Str(nSalario, 10, 2))
        QOut("Novo salario: " + Str(nNewSalario, 10, 2))
    ENDIF

RETURN NIL 
