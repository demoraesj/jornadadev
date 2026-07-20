FUNCTION Main()
    LOCAL nNum1
    LOCAL nNum2
    
    LOCAL cNum1
    LOCAL cNum2

    ACCEPT "Digite o primeiro numero: " TO cNum1
    ACCEPT "Digite o segundo numero: " TO cNum2

    nNum1 := Val(cNum1)
    nNum2 := Val(cNum2)

    IF nNum1 == nNum2
        QOut("Os Numeros " + Str(nNum1) + " e " + Str(nNum2) + " SAO IGUAIS")
    ELSEIF nNum1 > nNum2
        QOut("Maior: " + Str(nNum1))
        QOut("Menor: " + Str(nNum2))
    ELSE
       QOut("Maior: " + Str(nNum2))
       QOut("Menor: " + Str(nNum1))
    ENDIF 

RETURN NIL
