FUNCTION Main()

    LOCAL cSalario
    LOCAL nSalario
    LOCAL nNovoSalario

    ACCEPT "Digite o salario atual: " TO cSalario

    nSalario := Val(cSalario)

    IF nSalario < 1000
         nNovoSalario := nSalario * 1.15

    ELSEIF nSalario <= 2000
        nNovoSalario := nSalario * 1.12

    ELSEIF nSalario <= 4000
        nNovoSalario := nSalario * 1.08

    ELSE
        nNovoSalario := nSalario * 1.05

    ENDIF

    QOut("Salario atual: " + Str(nSalario,10,2))
    QOut("Novo salario: " + Str(nNovoSalario,10,2))

RETURN NIL
