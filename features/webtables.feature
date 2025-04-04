Feature: Busca de registros na Web Table

  Scenario: Usuário busca um registro existente na tabela
    Given que o usuário acessa a página de Web Tables do DemoQA
    When ele digita "Cierra" no campo de busca
    Then a tabela deve exibir apenas registros que contenham "Cierra"

  Scenario: Usuário busca um registro inexistente na tabela
    Given que o usuário acessa a página de Web Tables do DemoQA
    When ele digita "Zelda" no campo de busca
    Then a tabela deve exibir a mensagem de que nenhum registro foi encontrado
