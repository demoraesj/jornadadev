FUNCTION Main()

    LOCAL cInput 
    LOCAL nNota 

    WHILE .T.
        ACCEPT "Nota (0 a 10): " TO cInput
        nNota := Val(cInput)

        IF nNota >= 0 .AND. nNota <= 10
            QOut("Nota: " + Str(nNota) + " valida. FIM")
            EXIT
        ENDIF 

        QOut("Nota: " + Str(nNota) +" invalida. Tente novamente") //enquanto for invalida, segue pedindo
        
    ENDDO 

RETURN NIL