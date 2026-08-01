A - Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?

Resposta: O campo A1_FILIAL identifica qual filial cada cliente pertence, permitindo que o Protheus separe os dados entre diferentes empresas e filiais. Toda tabela precisa desse campo para respeitar a configuração de compartilhamento de registros.

B - O que a função xFilial() tem a ver com isso? O que aconteceria se um programa “escrevesse a filial na mão” em vez de usar xFilial() ?

Resposta: A função xFilial() retorna a filial correta de acordo com a configuração de compartilhamento da tabela. Caso informasse a filial manualmente, poderia gravar ou procurar dados na filial errada, além de causar registros duplicados ou não encontrar informações existentes.
