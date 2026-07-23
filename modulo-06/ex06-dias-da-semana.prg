FUNCTION Main()

    LOCAL aDias
    LOCAL nIndice

    aDias := { ;
        "Domingo", ;
        "Segunda-feira", ;
        "Terca-feira", ;
        "Quarta-feira", ;
        "Quinta-feira", ;
        "Sexta-feira", ;
        "Sabado" }

    ACCEPT "Digite um numero de 1 a 7: " TO nIndice

    nIndice := Val(nIndice)

    IF nIndice >= 1 .AND. nIndice <= 7

        QOut("Dia: " + aDias[nIndice])

    ELSE

        QOut("Numero invalido!")

    ENDIF

RETURN NIL
