## Exercicio 1 - AxCadastro x mBrowse

a)

Eu usaria o AxCadastro quando precisasse criar um CRUD de forma rapida, com pouco codigo e utilizando os recursos padrao do Protheus. Exemplo: cadastro simples de Pets (ZA1).

Eu usaria o mBrowse quando precisasse personalizar a tela, adicionando filtros, legendas coloridas, colunas ou outras funcionalidades. Exemplo: um cadastro de Pets com filtros e cores para destacar informacoes importantes.


b)

O mBrowse pode fazer:
- Exibir legendas coloridas.
- Permitir filtros personalizados.

O AxCadastro nao possui esses recursos de personalizacao.


c)

A regra ".T." deve ficar por ultimo porque ela sempre retorna verdadeiro. Como as regras sao avaliadas de cima para baixo, se ela estivesse antes das outras, as demais nunca seriam executadas, tornando todas as linhas da mesma cor.


d)

Um campo Virtual (X3_RELACAO) calcula e exibe uma informacao na tela, mas nao grava esse valor no banco de dados.

Ja um gatilho (SX7) executa uma acao automaticamente quando um campo e preenchido, podendo preencher outro campo sozinho durante o cadastro.
