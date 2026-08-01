# Exercicio 2 - A tabela ZA1 (Pets)

## a) Liste os campos da ZA1 (nome do campo, tipo, tamanho).

A tabela ZA1 foi criada com os seguintes campos:

| Campo | Tipo | Tamanho |
|--------|------|----------|
| ZA1_FILIAL | Caracter | 2 |
| ZA1_NOME | Caracter | 30 |
| ZA1_RACA | Caracter | 20 |
| ZA1_NASC | Data | 8 |

---

## b) Que indice faria sentido para a ZA1? Justifique.

O indice ZA1_FILIAL + ZA1_NOME faz sentido, pois organiza os pets por filial e depois pelo nome. Assim, a busca fica mais rapida e evita percorrer toda a tabela, como na analogia da lista telefonica.

---

## c) Explique por que o prefixo da tabela e Z.

O prefixo Z e utilizado para identificar tabelas customizadas criadas pelo cliente. Dessa forma, elas ficam separadas das tabelas padrao do Protheus e evitam conflitos com o sistema.

---

## d) Explique por que os campos comecam com ZA1_.

Os campos utilizam o prefixo ZA1_ para indicar que pertencem a tabela ZA1. Isso facilita a identificacao dos campos, evita conflitos com outras tabelas e segue o padrao de nomenclatura do Protheus.
