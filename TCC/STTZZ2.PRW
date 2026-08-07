#Include "PROTHEUS.CH"

/*/{Protheus.doc} STTZZ2
    Cadastro de Ocorrencias do Controle ISO 9001 (Tabela ZZ2).
    Rotina padrao, abre o browse classico da ZZ2 sem filtro. Quando
    acionada a partir da STTZZ1 (botao "Ocorrencias"), quem aplica o
    filtro por certificado e a funcao STTZZ2FLT, que chama esta
    funcao ja com a area de trabalho filtrada.

    @type    Function
    @version 2.0
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
/*/
User Function STTZZ2()

    Private cCadastro := "Ocorrencias do Certificado"
    Private aRotina   := MenuDef()

    dbSelectArea( "ZZ2" )
    dbSetOrder( 1 )      // ZZ2_FILIAL + ZZ2_CONFOR (+ demais campos da chave)
    dbGoTop()

    mBrowse( 6, 1, 22, 75, "ZZ2" )

Return Nil

/*/{Protheus.doc} STTZZ2FLT
    Ponto de entrada para exibicao das ocorrencias de um certificado
    especifico da ZZ1. Aplica o filtro por ZZ2_CONFOR, posiciona no
    primeiro registro correspondente e aciona a STTZZ2 padrao. Ao
    retorno do browse, remove o filtro aplicado.

    @type    Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
    @param   cCodigoZZ1, Caracter, Codigo do certificado (ZZ1_CODIGO) para filtro
/*/
User Function STTZZ2FLT( cCodigoZZ1 )

    Local cCodFiltro := cCodigoZZ1
    Local bFiltro     := {|| ZZ2_CONFOR == cCodFiltro }

    If Empty( cCodigoZZ1 )
        Return
    EndIf

    dbSelectArea( "ZZ2" )
    dbSetOrder( 1 )

    // ------------------------------------------------------------
    // Filtro via codeblock referenciando variavel local (cCodFiltro),
    // sem macro-substituicao (&). Mais robusto que montagem de
    // expressao por string: compilado uma unica vez, sem risco de
    // caracteres especiais no codigo do certificado.
    // ------------------------------------------------------------
    ZZ2->( dbSetFilter( bFiltro, "ZZ2_CONFOR == '" + cCodFiltro + "'" ) )

    // Respeita o indice principal (ZZ2_FILIAL + ZZ2_CONFOR)
    ZZ2->( dbSeek( xFilial( "ZZ2" ) + cCodFiltro ) )

    // ------------------------------------------------------------
    // BEGIN/END SEQUENCE garante que o filtro seja removido mesmo
    // que ocorra erro ou BREAK dentro de STTZZ2() (ex.: falha em
    // AxInclui/AxAltera). O dbClearFilter fica apos o END SEQUENCE,
    // executando sempre, independente do fluxo interno da rotina.
    // ------------------------------------------------------------
    BEGIN SEQUENCE

        U_STTZZ2()

    END SEQUENCE

    ZZ2->( dbClearFilter() )

Return Nil

/*/{Protheus.doc} MenuDef
    Opcoes de menu do cadastro ZZ2: apenas as opcoes padrao do
    AxCadastro, sem botao customizado.

    @type    Static Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
    @return  aRotina, Array de opcoes do browse
/*/
Static Function MenuDef()

    Local aRotina := {}

    aAdd( aRotina, { "Pesquisar"  , "AxPesqui" , 0, 1 } )
    aAdd( aRotina, { "Visualizar" , "AxVisual" , 0, 2 } )
    aAdd( aRotina, { "Incluir"    , "AxInclui" , 0, 3 } )
    aAdd( aRotina, { "Alterar"    , "AxAltera" , 0, 4 } )
    aAdd( aRotina, { "Excluir"    , "AxDeleta" , 0, 5 } )

Return aRotina
