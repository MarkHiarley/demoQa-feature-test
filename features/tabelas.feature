Feature: testar funcionalidades de tabelas
  Como usuario do sistema
  Eu quero interagir com tabelas
  Para que eu possa visualizar e manipular dados de forma organizada

  Scenario: verificar a estrutura da tabela
    Given que estou na página de tabelas
    When eu verifico a estrutura da tabela
    Then eu devo ver as colunas "First name", "Last name", "Age", "Email", "Salary" e "Department"

  Scenario: cadastrar um novo registro na tabela de maneira correta
    Given que estou na página de tabelas
    When eu clico no botão "Adicionar"
    And eu preencho os campos "First name", "Last name", "Age", "Email", "Salary" e "Department" com valores válidos
    And eu clico no botão "Salvar"
    Then eu devo ver o novo registro na tabela com os dados preenchidos

  Scenario: cadastrar um novo registro na tabela de maneira incorreta
    Given que estou na página de tabelas
    When eu clico no botão "Adicionar"
    And eu preencho os campos "First name", "Last name", "Age", "Email", "Salary" e "Department" com valores inválidos
    And eu clico no botão "Salvar"
    Then eu devo ver uma mensagem de erro informando que os dados são inválidos

  Scenario: editar um registro existente na tabela
    Given que estou na página de tabelas
    And eu tenho um registro existente com o nome "João"
    When eu clico no botão "Editar" do registro "João"
    And eu altero o campo "Idade" para "30"
    And eu clico no botão "Salvar"
    Then eu devo ver o registro atualizado com a idade "30"

  Scenario: excluir um registro da tabela
    Given que estou na página de tabelas
    And eu tenho um registro existente com o nome "Maria"
    When eu clico no botão "Excluir" do registro "Maria"
    And eu confirmo a exclusão
    Then o registro "Maria" não deve mais aparecer na tabela
