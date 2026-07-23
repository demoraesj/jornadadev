FUNCTION Main()

   LOCAL cJogadaCPU
   LOCAL cJogadaUsuario
   LOCAL cResultado
   LOCAL cResposta

   DO WHILE .T.

      CLS

      cJogadaUsuario := ""

      DO WHILE !ValidarJogada(cJogadaUsuario)

         ACCEPT "Escolha (Pedra/Papel/Tesoura): " TO cJogadaUsuario
         cJogadaUsuario := NormalizarJogada(cJogadaUsuario)

         IF !ValidarJogada(cJogadaUsuario)
            QOut("Jogada invalida! Digite Pedra, Papel ou Tesoura.")
         ENDIF

      ENDDO

      cJogadaCPU := SortearJogadaCPU()

      QOut("")
      QOut("Voce jogou : " + cJogadaUsuario)
      QOut("CPU jogou  : " + cJogadaCPU)

      cResultado := DefinirVencedor(cJogadaUsuario, cJogadaCPU)

      QOut("Resultado  : " + cResultado)
      QOut("")

      ACCEPT "Deseja jogar novamente? (S/N): " TO cResposta

      cResposta := Upper(AllTrim(cResposta))

      IF cResposta <> "S"
         EXIT
      ENDIF

   ENDDO

   QOut("")
   QOut("Obrigado por jogar!")

RETURN NIL


FUNCTION SortearJogadaCPU()

   LOCAL aJogadas := { "Pedra", "Papel", "Tesoura" }
   LOCAL nSorteio

   nSorteio := hb_RandomInt(1, 3)

RETURN aJogadas[nSorteio]

FUNCTION ValidarJogada(cJogada)

   LOCAL lValida := .F.

   IF cJogada == "Pedra" .OR. cJogada == "Papel" .OR. cJogada == "Tesoura"
      lValida := .T.
   ENDIF

RETURN lValida

FUNCTION DefinirVencedor(cJogada1, cJogada2)

    LOCAL cResultado

    IF cJogada1 == cJogada2
        cResultado := "Empate"
    ELSEIF  (cJogada1 == "Pedra" .AND. cJogada2 == "Tesoura") .OR. ;
            (cJogada1 == "Tesoura" .AND. cJogada2 == "Papel") .OR. ;
            (cJogada1 == "Papel" .AND. cJogada2 == "Pedra")
        
    cResultado := "Voce venceu!"

ELSE

    cResultado := "CPU venceu!"

ENDIF

RETURN cResultado

FUNCTION NormalizarJogada(cJogada)

   LOCAL cLimpa

   cLimpa := AllTrim(cJogada)
   cLimpa := Upper(Left(cLimpa, 1)) + Lower(SubStr(cLimpa, 2))

RETURN cLimpa
