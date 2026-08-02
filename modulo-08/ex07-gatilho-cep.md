# Exercicio 7 - Gatilho do CEP

## a)

**Qual a diferenca entre campo, contra-dominio e regra em um gatilho?**

- Campo: e o campo que dispara o gatilho quando seu valor e alterado.
- Contra-dominio: e o campo que sera preenchido automaticamente.
- Regra: e a funcao ou expressao responsavel por buscar e retornar o valor que sera colocado no contra-dominio.

---

## b)

**Por que a regra usa M->A1_CEP e nao SA1->A1_CEP?**

Porque o gatilho e executado enquanto o usuario ainda esta digitando o cadastro. Nesse momento, o valor do CEP ainda esta em memoria (M->) e ainda nao foi gravado na tabela SA1.

---

## c)

**Os CEPs estao dentro do fonte. Cite dois problemas disso em producao e como resolveria.**

Problemas:

- Sempre que um CEP novo precisar ser incluido, sera necessario alterar o codigo e recompilar a rotina.
- A lista de CEPs pode ficar desatualizada com o tempo, dificultando a manutencao.

Como resolver:

- Armazenar os CEPs em uma tabela do sistema para facilitar a manutencao.
- Utilizar um servico externo (API de CEP), permitindo consultar os dados sempre atualizados.

---

## d)

**Se pedissem para preencher tambem o codigo do municipio (A1_COD_MUN), o que voce faria?**

Criaria um novo gatilho para o campo **A1_COD_MUN**, utilizando a mesma logica dos outros gatilhos. A regra buscaria o codigo do municipio correspondente ao CEP informado e preencheria o campo automaticamente.
