FUNCTION Main()

    LOCAL cNota1
    LOCAL cNota2
    LOCAL cNota3
    LOCAL cNota4

    LOCAL nNota1
    LOCAL nNota2
    LOCAL nNota3
    LOCAL nNota4

    LOCAL nMedia

    ACCEPT "Digite a primeira nota: " TO cNota1
    ACCEPT "Digite a segunda nota: " TO cNota2
    ACCEPT "Digite a terceira nota: " TO cNota3
    ACCEPT "Digite a quarta nota: " TO cNota4

    nNota1 := Val(cNota1)
    nNota2 := Val(cNota2)
    nNota3 := Val(cNota3)
    nNota4 := Val(cNota4)

    nMedia := ((nNota1 * 1) + ;
               (nNota2 * 2) + ;
               (nNota3 * 3) + ;
               (nNota4 * 4)) / 10

    QOut("Media ponderada: " + Str(nMedia,10,2))

RETURN NIL