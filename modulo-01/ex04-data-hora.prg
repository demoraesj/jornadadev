FUNCTION Main()

    LOCAL cData := DToc(Date())
    LOCAL cHora := Time()

    QOut("============================")
    QOut("    DATA E HORA ATUAIS:")
    QOut("============================")
    QOut("      Data : " + cData)
    QOut("      Hora : " + cHora)
    QOut("============================")
    Return NIL