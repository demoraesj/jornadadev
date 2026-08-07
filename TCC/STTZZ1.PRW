#Include "PROTHEUS.CH"

/*/{Protheus.doc} STTZZ1
    Cadastro de Certificados de Fornecedores (Tabela ZZ1).
    Browse classico com pesquisa, visualizacao, inclusao, alteracao,
    exclusao e consulta de ocorrencias vinculadas (rotina STTZZ2).

    @type    Function
    @version 1.3
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
/*/
User Function STTZZ1()

    // Resgatadas implicitamente pelo mBrowse/AxCadastro via escopo Private
    Private cCadastro := "Certificados de Fornecedores"
    Private aRotina   := MenuDef()
    Private aColors   := {}

    dbSelectArea( "ZZ1" )
    dbSetOrder( 1 )      // ZZ1_FILIAL + ZZ1_CODIGO
    dbGoTop()

    // Legenda: vermelho vencido / amarelo a vencer (30 dias) / verde regular
    aAdd( aColors, { "ZZ1_VALCER < dDataBase"                                    , "BR_VERMELHO" } )
    aAdd( aColors, { "ZZ1_VALCER >= dDataBase .And. ZZ1_VALCER <= dDataBase + 30" , "BR_AMARELO"  } )
    aAdd( aColors, { ".T."                                                       , "BR_VERDE"    } )

    mBrowse( 6, 1, 22, 75, "ZZ1" )

Return Nil

/*/{Protheus.doc} MenuDef
    Opcoes de menu do cadastro ZZ1: opcoes padrao AxCadastro mais o
    botao customizado "Ocorrencias" (tipo 6).

    @type    Static Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
    @return  aRotina, Array de opcoes do browse
/*/
Static Function MenuDef()

    Local aRotina := {}

    aAdd( aRotina, { "Pesquisar"   , "AxPesqui" , 0, 1 } )
    aAdd( aRotina, { "Visualizar"  , "AxVisual" , 0, 2 } )
    aAdd( aRotina, { "Incluir"     , "AxInclui" , 0, 3 } )
    aAdd( aRotina, { "Alterar"     , "AxAltera" , 0, 4 } )
    aAdd( aRotina, { "Excluir"     , "AxDeleta" , 0, 5 } )
    aAdd( aRotina, { "Ocorrencias" , "OcorrZZ1" , 0, 6 } )

Return aRotina

/*/{Protheus.doc} OcorrZZ1
    Botao "Ocorrencias" do browse ZZ1. Recupera ZZ1_CODIGO do
    registro selecionado e aciona STTZZ2FLT, que aplica o filtro por
    ZZ2_CONFOR e abre a STTZZ2.

    @type    Static Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
/*/
Static Function OcorrZZ1()

    If ZZ1->( Eof() ) .Or. ZZ1->( Deleted() ) .Or. Empty( ZZ1->ZZ1_CODIGO )
        Help( " ", 1, "STTZZ1_SEMSEL",, "Selecione um registro valido para consultar as ocorrencias.", 1, 0 )
        Return
    EndIf

    U_STTZZ2FLT( ZZ1->ZZ1_CODIGO )

Return

/*/{Protheus.doc} STZZ1VLF
    Valida ZZ1_FORNEC/ZZ1_LOJAFO contra o SA2 e preenche o campo
    virtual ZZ1_NOMEFO. Associada ao "Valid" de ZZ1_LOJAFO no SX3.

    @type    User Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
    @return  lRet, Indica se o fornecedor/loja informado e valido
/*/
User Function STZZ1VLF()

    Local lRet := .T.

    BEGIN SEQUENCE

        If Empty( M->ZZ1_FORNEC ) .Or. Empty( M->ZZ1_LOJAFO )
            BREAK
        EndIf

        If ExistCpo( "SA2", xFilial( "SA2" ) + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1 )
            M->ZZ1_NOMEFO := Posicione( "SA2", 1, xFilial( "SA2" ) + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, "A2_NOME" )
        Else
            Help( " ", 1, "STTZZ1_FORINV",, "Fornecedor/Loja nao cadastrado no SA2.", 1, 0 )
            M->ZZ1_NOMEFO := Space( TamSX3( "ZZ1_NOMEFO" )[1] )
            lRet := .F.
        EndIf

    END SEQUENCE

Return lRet

/*/{Protheus.doc} STZZ1NOM
    Retorna o nome do fornecedor (SA2) a partir dos campos
    ZZ1_FORNEC/ZZ1_LOJAFO digitados na tela. Usada na atualizacao
    dinamica do campo virtual ZZ1_NOMEFO.

    @type    User Function
    @author  Arquiteto AdvPL/Protheus
    @since   05/08/2026
    @return  cNome, Nome do fornecedor ou espacos em branco
/*/
User Function STZZ1NOM()

    Local cNome := Space( TamSX3( "ZZ1_NOMEFO" )[1] )

    If !Empty( M->ZZ1_FORNEC ) .And. !Empty( M->ZZ1_LOJAFO ) ;
        .And. ExistCpo( "SA2", xFilial( "SA2" ) + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1 )
        cNome := Posicione( "SA2", 1, xFilial( "SA2" ) + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, "A2_NOME" )
    EndIf

Return cNome
