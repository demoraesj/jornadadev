# Exercicio 3 - Recriando a ZA1 no Configurador

## a. Tabela criada no Configurador

Foi criada a tabela ZA1 no Configurador com o nome fisico ZA1990.

![Tabela ZA1 criada no Configurador](evidencias/ex03-configurador-cadastro-za1.png)

---

## b. Registro da tabela no SX2

A tabela foi registrada no SX2, apontando para o arquivo fisico ZA1990.

![Registro da tabela no SX2](evidencias/ex03-sx2-tabela-za1.png)

---

## c. Cadastro dos campos no SX3

Os campos ZA1_FILIAL, ZA1_NOME, ZA1_RACA e ZA1_DATA foram cadastrados no SX3.

![Campos cadastrados no SX3](evidencias/ex03-sx3-campos-za1.png)

---

## d. Reconhecimento da tabela pelo framework

Para forcar o framework a reconhecer e criar a tabela fisica, foi utilizada a seguinte formula:

```advpl
DbSelectArea("ZA1")
```

![Formula de reconhecimento da tabela](evidencias/ex03-formula-reconhecimento-za1.png)

---

## e. Conferencia no MPSDU

Apos o reconhecimento pelo framework, a tabela fisica ZA1990.DBF foi aberta no MPSDU. Foi possivel confirmar a criacao da tabela e dos campos cadastrados.

![Tabela ZA1990 aberta no MPSDU](evidencias/ex03-mpsdu-tabela-za1.png)
