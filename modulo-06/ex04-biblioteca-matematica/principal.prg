PROCEDURE Main()

    LOCAL nNum1
    LOCAL nNum2

    CLS

    ACCEPT "Digite o primeiro numero: " TO nNum1
    ACCEPT "Digite o segundo numero: " TO nNum2

    nNum1 := Val(nNum1)
    nNum2 := Val(nNum2)

    QOut("")
    QOut("===== RESULTADOS =====")
    QOut("Fatorial do primeiro numero: " + Str(FatorialN(nNum1),30))
    QOut("Fatorial do segundo numero: " + Str(FatorialN(nNum2),30))

    IF EhPrimo(nNum1)
        QOut(Str(nNum1) + " e primo.")
    ELSE
        QOut(Str(nNum1) + " nao e primo.")
    ENDIF

    IF EhPrimo(nNum2)
        QOut(Str(nNum2) + " e primo.")
    ELSE
        QOut(Str(nNum2) + " nao e primo.")
    ENDIF

    QOut("MDC: " + Str(MDC(nNum1, nNum2)))
    QOut("MMC: " + Str(MMC(nNum1, nNum2)))

RETURN
