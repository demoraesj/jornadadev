FUNCTION Main()
    LOCAL cHora
    LOCAL cHoraFormatada
    LOCAL nI
    
    FOR nI := 1 TO 30

        cHora := obterHora()

        cHoraFormatada := formatarHora(cHora)
    
        exibirHora(cHoraFormatada)

        Inkey(1) // Aguarda por volta de 1 segundo antes de atualizar a hora novamente

    NEXT

RETURN NIL



FUNCTION obterHora()

    LOCAL cHora

    cHora := Time()

RETURN cHora



FUNCTION formatarHora(cHora)

RETURN cHora



FUNCTION exibirHora(cHora)

    QOut("Hora atual: " + cHora)

RETURN NIL 
