FUNCTION Main()

    LOCAL nA := 10
    LOCAL nB := 0
    LOCAL nResultado

    BEGIN SEQUENCE

        nResultado := nA / nB

        QOut("Resultado: " + Str(nResultado))

    RECOVER WITH oErro

        QOut("Erro capturado: " + oErro:Description)

    END SEQUENCE

    QOut("")
    QOut("O programa continuou executando normalmente.")

RETURN NIL
