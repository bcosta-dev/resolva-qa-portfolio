Feature: Validar remoção da mensagem de erro após correção do e-mail
    @TestCaseKey=RES-T32
    Scenario: Validar remoção da mensagem de erro após correção do e-mail
        
        Given que estou na tela de login do Resolva
            And preencho o campo e-mail com "teste..usuario@exemplo.com"
            And preencho o campo senha com "Teste123"
            When clico no botão "Entrar"
            Then devo visualizar a mensagem "Digite um e-mail válido!"
            And o campo e-mail deve possuir "aria-invalid" igual a "true"
            When substituo o e-mail por "usuario@exemplo.com"
            Then a mensagem de erro do e-mail deve desaparecer
            And o campo e-mail deve possuir "aria-invalid" igual a "false"
            And o valor do campo e-mail deve ser "usuario@exemplo.com"