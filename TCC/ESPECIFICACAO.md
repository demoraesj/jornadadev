# Especificação do Sistema

## Nome do Projeto

Controle ISO 9001 de Fornecedores

---

# Objetivo

Sistema responsável pelo controle de certificados de fornecedores e registro de ocorrências de não conformidade.

---

# Tabelas

## ZZ1 - Controle de Fornecimento

Responsável pelo cadastro dos certificados dos fornecedores.

Campos:

| Campo | Descrição |
|-------|-----------|
| ZZ1_FILIAL | Filial |
| ZZ1_CODIGO | Código |
| ZZ1_FORNEC | Fornecedor |
| ZZ1_LOJAFO | Loja |
| ZZ1_NOMEFO | Nome do fornecedor |
| ZZ1_CERTIF | Certificado |
| ZZ1_VALCER | Validade |
| ZZ1_TOLERA | Tolerância |
| ZZ1_TOTOK | Total conforme |
| ZZ1_TOTNOK | Total não conforme |

---

## ZZ2 - Ocorrências

Responsável pelo registro das ocorrências.

Campos:

| Campo | Descrição |
|-------|-----------|
| ZZ2_FILIAL | Filial |
| ZZ2_CONFOR | Controle |
| ZZ2_FORNEC | Fornecedor |
| ZZ2_LOJAFO | Loja |
| ZZ2_NOMEFO | Nome fornecedor |
| ZZ2_DATA | Data |
| ZZ2_HORA | Hora |
| ZZ2_CODPRO | Produto |
| ZZ2_QTDOK | Qtde conforme |
| ZZ2_QTDNOK | Qtde não conforme |
| ZZ2_VLRUNI | Valor Unitário |
| ZZ2_TOTOK | Valor conforme |
| ZZ2_TOTNOK | Valor não conforme |

---

# Relacionamento

ZZ1

↓

1:N

↓

ZZ2

---

# Rotinas

STTZZ1

STTZZ2

STTZZLIB

---

# Validações

(serão implementadas)

---

# Gatilhos

(serão implementados)

---

# Consultas

(serão implementadas)