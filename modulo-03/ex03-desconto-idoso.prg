FUNCTION Main()

    LOCAL cNome
    LOCAL cDtNasc
    LOCAL cPreco

    LOCAL nPreco
    LOCAL nIdade
    LOCAL nDesconto
    LOCAL nTotal

    LOCAL dDtNasc

    SET DATE FORMAT TO "DD/MM/YYYY"

    ACCEPT "Digite seu nome: " TO cNome
    ACCEPT "Digite sua data de nascimento: " TO cDtNasc
    ACCEPT "Digite o preco do produto: " TO cPreco

    dDtNasc := CToD(cDtNasc)
    QOut(dDtNasc)
    QOut(Date())

    nIdade := Int((Date() - dDtNasc) / 365)

    nPreco := Val(cPreco)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("Nome: " + cNome)
    QOut("Idade: " + Str(nIdade,10,0))
    QOut("Preco: " + Str(nPreco,10,2))
    QOut("Desconto: " + Str(nDesconto,10,2))
    QOut("Total: " + Str(nTotal,10,2))

RETURN NIL
