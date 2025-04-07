Feature: Interações com Checkboxes na página do DemoQA

  Scenario: Marcar uma opção simples
    Given que estou na página de checkboxes
    When eu marco a caixa "Documentos"
    Then deve aparecer a mensagem mostrando todos os documentos selecionados
    And a caixa deve ficar marcada com "[x]"

  Scenario: Desmarcar uma opção
    Given que a caixa "Transferências" está marcada
    When eu clico nela para desmarcar
    Then a mensagem deve remover os itens de transferências
    And a caixa deve voltar para o estado "[ ]"

  Scenario: Marcar uma pasta com subitens
    Given que estou vendo a opção "Lar"
    When eu marco essa caixa principal
    Then todas as caixas dentro de "Lar" devem ser marcadas automaticamente
    And a mensagem deve mostrar todos os itens selecionados

  Scenario: Desmarcar uma pasta com subitens
    Given que "Lar" está marcado com todos seus subitens
    When eu desmarco "Lar"
    Then todas as caixas dentro devem ser desmarcadas
    And a mensagem deve remover todos esses itens

  Scenario: Marcar apenas alguns subitens
    Given que a opção "Lar" está expandida
    When eu marco apenas "Área de trabalho"
    Then a caixa "Lar" deve ficar com "[-]" indicando seleção parcial
    And a mensagem deve mostrar apenas os itens marcados
