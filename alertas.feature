Feature: botões de alerta
  Como usuario do sistema
  Eu quero interagir com botões de alerta
  Para que eu possa receber mensagens de alerta

    Scenario: clicar no botão de ver alerta
    Given que estou na página de botões de alerta
    When eu clico no botão "Ver Alerta"
    Then eu devo ver uma mensagem de alerta com o texto "Você clicou no botão!"]

    Scenario: clicar no botão de ver alerta após 5 segundos
    Given que estou na página de botões de alerta
    When eu clico no botão "Ver Alerta" após 5 segundos
    Then eu devo ver uma mensagem de alerta com o texto "Este alerta apareceu após 5 segundos!"]  

    Scenario: alerta com uma caixa de diálogo
    Given que estou na página de botões de alerta
    When eu clico no botão "Caixa de Alerta"
    And eu clico no botão "ver caixa de diálogo"
    And eu ver uma mensagem de alerta com um campo "Digite seu nome"
    And eu digito "João" no campo "Digite seu nome"
    And eu clico no botão "OK"
    Then eu devo ver uma mensagem de confirmação com o texto "Você digitou: Joao"]
