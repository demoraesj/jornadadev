FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL cNota1 := ""
    LOCAL cNota2 := ""
    LOCAL cResp := ""

    LOCAL nNota1
    LOCAL nNota2
    LOCAL nMedia

    WHILE .T.

        // Validação do nome
        WHILE .T.

            ACCEPT "Digite o nome do aluno: " TO cNome

            IF Len(Trim(cNome)) > 0
                EXIT
            ENDIF

            QOut("Nome invalido!")

        ENDDO

        // Validação da disciplina
        WHILE .T.

            ACCEPT "Digite a disciplina (3 letras): " TO cDisc

            IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
                EXIT
            ENDIF

            QOut("Disciplina invalida!")

        ENDDO

        // Validação da primeira nota
        WHILE .T.

            ACCEPT "Digite a primeira nota: " TO cNota1

            nNota1 := Val(cNota1)

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ENDIF

            QOut("Nota invalida!")

        ENDDO

        // Validação da segunda nota
        WHILE .T.

            ACCEPT "Digite a segunda nota: " TO cNota2

            nNota2 := Val(cNota2)

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ENDIF

            QOut("Nota invalida!")

        ENDDO

        nMedia := (nNota1 + nNota2) / 2

        QOut("")
        QOut("===== DADOS DO ALUNO =====")
        QOut("Nome: " + cNome)
        QOut("Disciplina: " + cDisc)
        QOut("Nota 1: " + Str(nNota1,10,2))
        QOut("Nota 2: " + Str(nNota2,10,2))
        QOut("Media: " + Str(nMedia,10,2))
        QOut("")

        ACCEPT "Deseja calcular outro aluno? (S/N): " TO cResp

        IF Upper(cResp) <> "S"
            EXIT
        ENDIF

    ENDDO

    QOut("Programa encerrado.")

RETURN NIL
