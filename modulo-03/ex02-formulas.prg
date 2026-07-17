#define PI 3.14159

FUNCTION Main()

    LOCAL cRaio
    LOCAL cCatetoA
    LOCAL cCatetoB
    LOCAL cPeso
    LOCAL cAltura

    LOCAL nRaio
    LOCAL nCatetoA
    LOCAL nCatetoB
    LOCAL nPeso
    LOCAL nAltura

    LOCAL nArea
    LOCAL nHipotenusa
    LOCAL nImc

    ACCEPT "Digite o raio do circulo: " TO cRaio

    nRaio := Val(cRaio)

    nArea := PI * (nRaio ^ 2)

    QOut("Area do circulo: " + Str(nArea,10,2))

    ACCEPT "Digite o cateto A: " TO cCatetoA
    ACCEPT "Digite o cateto B: " TO cCatetoB

    nCatetoA := Val(cCatetoA)
    nCatetoB := Val(cCatetoB)

    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

    QOut("Hipotenusa: " + Str(nHipotenusa,10,2))


    ACCEPT "Digite o peso: " TO cPeso
    ACCEPT "Digite a altura: " TO cAltura

    nPeso := Val(cPeso)
    nAltura := Val(cAltura)

    nImc := nPeso / (nAltura ^ 2)

    IF nImc < 18.5
        QOut("IMC: " + Str(nImc,10,2) + " Voce esta abaixo do peso")

    ELSEIF nImc >= 18.5 .AND. nImc <=24.9
        QOut("IMC: " + Str(nImc,10,2) + " Voce esta com peso normal")

    ELSEIF nImc >25 .AND. nImc < 29.9
        QOut("IMC: " + Str(nImc,10,2) + " Voce esta com sobrepeso")
        
    ELSE
        QOut("IMC: " + Str(nImc,10,2) + " Voce esta com obesidade")
    ENDIF


RETURN NIL