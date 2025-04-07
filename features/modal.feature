Feature: alertas modais
    Como usuario do sistema
    Eu quero interagir com alertas modais
    Para que eu possa receber mensagens de alerta
 
  Scenario: clicar no botão de modal pequeno
    Given que estou na página de botões de alerta modal
    When eu clico no botão "modal pequeno"
    Then eu devo ver uma mensagem de alerta do tipo modal de tamanho pequeno

  Scenario: clicar no botão de modal grande
    Given que estou na página de botões de alerta modal
    When eu clico no botão "modal grande"
    Then eu devo ver uma mensagem de alerta do tipo modal de tamanho grande