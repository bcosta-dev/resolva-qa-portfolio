Feature: Validar alternância entre mostrar e ocultar senha
    @TestCaseKey=RES-T34
    Scenario: Validar alternância entre mostrar e ocultar senha
        
        Given que estou na tela de login do Resolva
            And preencho o campo senha com "Teste123"
            And a senha está inicialmente oculta
            When clico no botão de mostrar senha
            Then os caracteres da senha devem ficar visíveis
            And o campo senha deve possuir o atributo "type" igual a "text"
            And o valor da senha deve permanecer inalterado
            When clico novamente no botão de visibilidade
            Then os caracteres da senha devem ficar ocultos
            And o campo senha deve possuir o atributo "type" igual a "password"
            And o valor da senha deve permanecer inalterado