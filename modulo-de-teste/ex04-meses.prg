FUNCTION Main()

    LOCAL nNumber
    LOCAL cNumber

    ACCEPT "Digite um numero de 1 a 12: " TO cNumber

    nNumber := Val(cNumber)

    DO CASE

        CASE nNumber == 1
            QOut("Mes de janeiro")

        CASE nNumber == 2
            QOut("Mes de fevereiro")

        CASE nNumber == 3
            QOut("Mes de marco")

        CASE nNumber == 4
            QOut("Mes de abril")

        CASE nNumber == 5
            QOut("Mes de maio")

        CASE nNumber == 6
            QOut("Mes de junho")

        CASE nNumber == 7
            QOut("Mes de julho")

        CASE nNumber == 8
            QOut("Mes de agosto")

        CASE nNumber == 9
            QOut("Mes de setembro")

        CASE nNumber == 10
            QOut("Mes de outubro")
        
        CASE nNumber == 11
            QOut("Mes de novembro")

        CASE nNumber == 12
            QOut("Mes de dezembro")

            OTHERWISE
            QOut("ERRO! mes invalido")

    ENDCASE 

RETURN NIL
