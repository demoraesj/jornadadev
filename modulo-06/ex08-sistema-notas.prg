FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL cQtd
    LOCAL nQtd
    LOCAL cNome
    LOCAL cNota
    LOCAL n1
    LOCAL n2
    LOCAL n3
    LOCAL n4
    LOCAL nMedia
    LOCAL nI

    ACCEPT "Quantidade de alunos: " TO cQtd

    nQtd := Val(cQtd)

    FOR nI := 1 TO nQtd

        QOut("")
        QOut("Aluno " + LTrim(Str(nI)))

        ACCEPT "Nome: " TO cNome

        ACCEPT "Nota 1: " TO cNota
        n1 := Val(cNota)

        ACCEPT "Nota 2: " TO cNota
        n2 := Val(cNota)

        ACCEPT "Nota 3: " TO cNota
        n3 := Val(cNota)

        ACCEPT "Nota 4: " TO cNota
        n4 := Val(cNota)

        AAdd(aAlunos, { cNome, n1, n2, n3, n4 })

    NEXT

    QOut("")
    QOut("===== RESULTADO =====")

    FOR nI := 1 TO Len(aAlunos)

        nMedia := ( ;
            aAlunos[nI][2] + ;
            aAlunos[nI][3] + ;
            aAlunos[nI][4] + ;
            aAlunos[nI][5] ) / 4

        QOut("")
        QOut("Nome: " + aAlunos[nI][1])
        QOut("Media: " + LTrim(Str(nMedia,10,2)))

    NEXT

RETURN NIL
