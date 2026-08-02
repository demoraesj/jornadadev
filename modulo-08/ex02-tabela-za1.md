# Exercicio 2 - Completando a tabela ZA1

## a) Cadastro da tabela e dos campos

A tabela **ZA1** foi cadastrada no **SX2** com a descricao **Pets**, apontando para o arquivo fisico **ZA1990**.

![Cadastro da tabela](modulo 08 - ex 2 - SX2.png)

Em seguida, foi realizada a configuracao da estrutura da tabela no **SX3**, criando todos os campos necessarios para o cadastro dos pets.

Foram configurados os campos:

- ZA1_FILIAL
- ZA1_COD
- ZA1_CLIENT
- ZA1_LOJA
- ZA1_NOMCLI
- ZA1_NOME
- ZA1_RACA
- ZA1_DATA
- ZA1_OBS

Cada campo recebeu seu tipo, tamanho e demais configuracoes de acordo com a necessidade da tabela.

![Configuracao dos campos](modulo 08 - ex 2 - SX3.png)

---

## b) Campo virtual para o nome do cliente

O campo **ZA1_NOMCLI** foi configurado como **Virtual**, permitindo exibir o nome do cliente da tabela **SA1** sem armazenar essa informacao fisicamente na ZA1.

Assim, o sistema consulta o nome sempre que necessario, evitando duplicacao de dados.

![Campo virtual](modulo 08 - ex 2 - Mostrando campo virtual.png)

No **Inicializador Padrao** foi utilizada a funcao **U_ZA1NOM()**. Ja no **Inicializador de Browse**, foi utilizada a funcao **POSICIONE()**, responsavel por localizar e apresentar o nome do cliente durante a navegacao.

![Configuracao da relacao](modulo 08 - ex 2 - relacao.png)

Para evitar erros durante inclusao, alteracao, visualizacao e exclusao dos registros, foi criada a funcao **U_ZA1NOM()**, que utiliza os valores em memoria enquanto o registro ainda nao foi gravado e os valores da tabela ZA1 quando o registro ja existe.

```advpl
#Include "PROTHEUS.CH"

USER FUNCTION ZA1NOM()

    LOCAL cCliente := ""
    LOCAL cLoja := ""

    IF INCLUI .OR. ALTERA
        cCliente := M->ZA1_CLIENT
        cLoja := M->ZA1_LOJA
    ELSE
        cCliente := ZA1->ZA1_CLIENT
        cLoja := ZA1->ZA1_LOJA
    ENDIF

RETURN POSICIONE("SA1",1,XFILIAL("SA1")+cCliente+cLoja,"A1_NOME")
```

![Funcao da relacao](modulo 08 - ex 2 - funcao da relacao.png)

---

## c) Configuracao dos indices

Foram criados dois indices para facilitar a busca dos registros.

O primeiro indice utiliza a filial juntamente com o codigo do pet:

```
ZA1_FILIAL + ZA1_COD
```

Esse indice permite localizar rapidamente um pet pelo seu codigo.

![Indice por codigo](modulo 08 - ex 2 - Indice 1 Code.png)

O segundo indice utiliza a filial, o codigo do cliente e a loja:

```
ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA
```

Com esse indice, torna-se mais facil localizar todos os pets cadastrados para um determinado cliente.

![Indice por cliente](modulo 08 - ex 2 - Indice 2 Cliente.png)
