FUNCTION Main()

    LOCAL nI

    QOut("===== A) Numeros de 1 a 100 =====")

    FOR nI := 1 TO 100
        QOut(Str(nI,3,0))
    NEXT

    QOut("")
    QOut("===== B) Numeros de -50 a 50 =====")

    FOR nI := -50 TO 50
        QOut(Str(nI,3,0))
    NEXT

    QOut("")
    QOut("===== C) Numeros de 80 a 5 =====")

    FOR nI := 80 TO 5 STEP -1
        QOut(Str(nI,3,0))
    NEXT

RETURN NIL
