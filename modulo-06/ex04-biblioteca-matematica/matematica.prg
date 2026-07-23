FUNCTION FatorialN(nN)

    LOCAL nResultado := 1
    LOCAL nI

    FOR nI := 1 TO nN
        nResultado *= nI
    NEXT

RETURN(nResultado)

FUNCTION EhPrimo(nN)
    
    LOCAL nI

    IF nN < 2
        RETURN .F.
    ENDIF

    FOR nI := 2 TO nN - 1

        IF nN % nI == 0
            RETURN .F.
        ENDIF
    NEXT

RETURN .T.

FUNCTION MMC(nA, nB)

    LOCAL nMMC

    IF nA > nB
        nMMC := nA
    ELSE
        nMMC := nB
    ENDIF

    DO WHILE .T.

        IF nMMC % nA == 0 .AND. nMMC % nB == 0
            RETURN nMMC
        ENDIF

        nMMC++

    ENDDO
    
RETURN NIL

FUNCTION MDC(nA, nB)

    LOCAL nMDC

    IF nA < nB
        nMDC := nA
    ELSE
        nMDC := nB
    ENDIF

    DO WHILE nMDC > 0

        IF nA % nMDC == 0 .AND. nB % nMDC == 0
            RETURN nMDC
        ENDIF

            nMDC--

    ENDDO

RETURN 1
