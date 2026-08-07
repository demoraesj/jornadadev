# TCC - Controle ISO 9001 de Fornecedores

## Autor

**João Pedro Pereira de Moraes**

Curso: Harbour / AdvPL - Desenvolvimento Protheus

---

# Objetivo

Desenvolver uma solução em AdvPL para o ERP Protheus, responsável pelo controle dos certificados ISO 9001 dos fornecedores e pelo registro das ocorrências relacionadas aos materiais recebidos.

O projeto contempla a criação do Dicionário de Dados, desenvolvimento das rotinas AdvPL, configuração de índices, gatilhos, validações e documentação completa da implementação.

---

# Funcionalidades

## Cadastro de Certificados (ZZ1)

A rotina STTZZ1 permite:

- Cadastro de certificados ISO 9001;
- Alteração de registros;
- Exclusão de registros;
- Consulta de certificados;
- Pesquisa de registros;
- Acesso à rotina de ocorrências do certificado.

---

## Cadastro de Ocorrências (ZZ2)

A rotina STTZZ2 permite:

- Registro das ocorrências vinculadas aos certificados;
- Consulta das ocorrências cadastradas;
- Integração com os certificados cadastrados na ZZ1.

---

# Estrutura do Projeto

```text
TCC
│
├── Dados-e-Dicionario
│   ├── sigacom.xnu
│   ├── six990.dbf
│   ├── sx2990.dbf
│   ├── sx3990.dbf
│   ├── sx7990.dbf
│   ├── zz1.dbf
│   ├── zz2.dbf
│   └── README.md
│
├── evidencias
│
├── ESPECIFICACAO.md
├── README.md
├── STTZZ1.PRW
├── STTZZ2.PRW
└── STTZZLIB.PRW
```

---

# Estrutura das Tabelas

## ZZ1 – Controle ISO 9001

Tabela responsável pelo cadastro dos certificados ISO 9001 dos fornecedores.

Principais informações armazenadas:

- Código do Controle
- Código do Fornecedor
- Loja
- Nome do Fornecedor
- Dados do Certificado
- Validade
- Percentual de Tolerância
- Quantidade Conforme
- Quantidade Não Conforme

---

## ZZ2 – Ocorrências

Tabela responsável pelo registro das ocorrências relacionadas aos certificados cadastrados na ZZ1.

Principais informações:

- Controle
- Fornecedor
- Loja
- Nome do Fornecedor
- Data
- Hora
- Produto
- Quantidade Conforme
- Quantidade Não Conforme
- Valor Unitário
- Valor Conforme
- Valor Não Conforme

---

# Rotinas Desenvolvidas

## STTZZ1.PRW

Responsável pelo cadastro dos certificados ISO 9001.

Funcionalidades:

- Browse
- Inclusão
- Alteração
- Exclusão
- Pesquisa
- Acesso às ocorrências

---

## STTZZ2.PRW

Responsável pelo cadastro das ocorrências dos certificados.

Funcionalidades:

- Browse
- Inclusão
- Consulta
- Integração com ZZ1

---

## STTZZLIB.PRW

Biblioteca utilizada para centralizar funções auxiliares compartilhadas entre as rotinas do projeto.

---

# Índices

Foram criados índices para facilitar a localização dos registros.

### ZZ1

- Chave Primária
- Por Fornecedor
- Por Validade

### ZZ2

- Chave Primária
- Por Controle

---

# Gatilhos

Foram configurados gatilhos para preenchimento automático dos campos relacionados aos fornecedores.

Principais gatilhos:

- Nome do fornecedor
- Código do fornecedor
- Loja do fornecedor
- Data automática
- Hora automática

---

# Validações

Foram implementadas validações para garantir a integridade dos dados.

Exemplos:

- Existência do fornecedor;
- Validação da data do certificado;
- Controle de tolerância;
- Existência do certificado;
- Existência do produto.

Durante os testes funcionais foi identificado um ajuste pendente na configuração de um gatilho SX7 relacionado ao preenchimento automático da tabela ZZ2, sem comprometer a implementação das rotinas desenvolvidas.

---

# Evidências

As evidências do desenvolvimento encontram-se na pasta **/evidencias**, contendo:

- Criação das tabelas;
- Campos;
- Índices;
- Gatilhos;
- Compilação das rotinas;
- Browse das telas;
- Inclusão de registros;
- Preview das tabelas;
- Testes realizados.

---

# Dados e Dicionário

A pasta **Dados-e-Dicionario** contém os arquivos exportados do ambiente Protheus utilizados no desenvolvimento do projeto, incluindo:

- Definições do Dicionário de Dados (SX2, SX3 e SX7);
- Índices do sistema (SIX);
- Definição do menu (SIGACOM.XNU);
- Tabelas do projeto (ZZ1 e ZZ2).

---

# Considerações Finais

O projeto permitiu aplicar os conhecimentos adquiridos durante o curso de Harbour/AdvPL, envolvendo a criação do Dicionário de Dados, desenvolvimento de rotinas, configuração de índices, gatilhos e validações no ambiente Protheus.

As rotinas foram compiladas com sucesso e submetidas a testes funcionais, atendendo aos requisitos propostos para o controle de certificados ISO 9001 e ocorrências de fornecedores.