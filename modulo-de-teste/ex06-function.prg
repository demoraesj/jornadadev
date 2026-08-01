FUNCTION Main()

LOCAL n

n := Dobro(8) //chama a função com valor
QOut(Str(n))

Cabecalho() // chama função null

RETURN NIL


FUNCTION Dobro(nNumero) //função com valor

RETURN nNumero * 2


FUNCTION Cabecalho() //função null

QOut("================")
QOut(" SISTEMA ")
QOut("================")

RETURN NIL