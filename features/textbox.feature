Feature: Validação de formulários

Scenario: Preenchimento correto do formulário
  Given o usuário está na página do formulário
  When ele preenche todos os campos corretamente e clica em "Enviar"
  Then o formulário deve ser enviado com sucesso

Scenario: Validação do campo "Full Name"
  Given o usuário está preenchendo o formulário
  When ele insere um único caractere no campo "Full Name"
  Then uma mensagem de erro deve ser exibida informando a necessidade de um número mínimo de caracteres

Scenario: Validação do campo "Current Address"
  Given o usuário está preenchendo o formulário
  When ele insere um único caractere no campo "Current Address"
  Then uma mensagem de erro deve ser exibida informando a necessidade de um número mínimo de caracteres

Scenario: Validação do campo "Permanent Address"
  Given o usuário está preenchendo o formulário
  When ele insere um único caractere no campo "Permanent Address"
  Then uma mensagem de erro deve ser exibida informando a necessidade de um número mínimo de caracteres
