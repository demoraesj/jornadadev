FUNCTION Main()

    LOCAL nNum
    LOCAL nI
    LOCAL cNum

    ACCEPT "Tabuada de qual numero? " TO cNum
    nNum := Val(cNum)

    FOR nI := 1 TO 10
        QOut(AllTrim(Str(nNum)) + " x " + AllTrim(Str(nI)) + " = " + AllTrim(Str(nNum * nI)))
    NEXT


RETURN NIL
