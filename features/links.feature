Feature: Validação de links no DemoQA

  Scenario: Verificar se o link "Home" abre corretamente em uma nova aba
    Given que o usuário acessa a página de "Links" no site DemoQA
    And a página está completamente carregada
    When o usuário localiza o link com o texto "Home"
    And ele clica sobre o link
    Then uma nova aba do navegador deve ser aberta automaticamente
    And a URL da nova aba deve conter "demoqa.com"
    And o conteúdo da nova aba deve exibir a página inicial do DemoQA
    And a aba original deve continuar aberta e funcional

  Scenario: Verificar o comportamento de um link que faz uma chamada de API
    Given que o usuário acessa a página de "Links" no site DemoQA
    And a página está completamente carregada
    When o usuário clica no link "Not Found"
    Then uma requisição HTTP deve ser enviada para o servidor
    And a resposta deve conter o código de status 404
    And a mensagem de erro exibida na página deve ser "Link has responded with status 404 and status text Not Found"
