Feature: Funcionalidade de Arrastar e Soltar (Drag and Drop)

  Scenario: Arrastar e soltar com sucesso
    Given que estou na página "Droppable"
    When arrasto o quadrado "Drag me" para a área "Drop here"
    Then a área deve ficar verde
    And deve mostrar a mensagem "Dropped!"

  Scenario: Arrastar para fora da área
    Given que estou na página "Droppable"
    When arrasto o quadrado para fora da área de soltar
    Then o quadrado deve voltar para o lugar inicial
    And a área continua mostrando "Drop here"

  Scenario: Resetar a posição (se tiver botão)
    Given que soltei o quadrado na área "Drop here"
    When clico no botão "Reset"
    Then o quadrado deve voltar para a posição inicial
    And a área deve voltar ao estado padrão com a mensagem "Drop here"

  Scenario: Ver aparência durante o arraste
    Given que estou arrastando o quadrado
    Then o cursor deve ficar com o ícone de mão fechada
    And o quadrado deve ficar com aparência alterada (transparente ou com borda pontilhada)

  Scenario: Soltar pela metade
    Given que arrasto o quadrado até a beirada da área de soltar
    When solto ele parcialmente sobre a borda
    Then o sistema pode aceitar como válido e mudar a área para "Dropped!"
    Or o quadrado deve voltar para a posição original
