FUNCTION Main()

    // "=" Compara o inicio da string
    // "==" Exige que as duas strings sejam exatamente iguais

    LOCAL cTexto1 := "Harbour"
    LOCAL cTexto2 := "Harb"

    QOut("Comparando: " + cTexto1 + " e " + cTexto2)
    QOut("")

    QOut('Usando "="  : ' + IIF(cTexto1 = cTexto2, "Verdadeiro", "Falso"))
    QOut('Usando "==": ' + IIF(cTexto1 == cTexto2, "Verdadeiro", "Falso"))

RETURN NIL