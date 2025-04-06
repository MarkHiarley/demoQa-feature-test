Feature: Funcionamento dos botões de rádio

Scenario: Selecionar um botão de rádio com sucesso
Given o usuário está na seção com botões de rádio
When ele clica em uma das opções disponíveis
Then o botão deve ficar marcado
And os outros botões devem ser desmarcados automaticamente

Scenario: Tentar selecionar botão de rádio inativo
Given o usuário está visualizando os botões de rádio
When ele clica em um botão da seção com falha
Then o botão não deve responder ao clique
And o estado visual deve permanecer inalterado

Scenario: Verificar exclusividade na seleção
Given um botão de rádio já está selecionado
When o usuário seleciona outro botão
Then o novo botão deve ser marcado
And o botão anterior deve ser desmarcado

Scenario: Observar feedback visual após seleção
Given o usuário está interagindo com botões de rádio funcionais
When ele seleciona uma opção
Then o botão deve mudar visualmente para o estado selecionado

Scenario: Testar múltiplas tentativas em botões com falha
Given os botões com falha estão na mesma seção
When o usuário tenta selecioná-los várias vezes
Then eles continuam sem responder aos cliques
And a falha deve se repetir de forma consistente