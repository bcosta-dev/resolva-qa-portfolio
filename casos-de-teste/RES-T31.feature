Feature: Validar obrigatoriedade dos campos e-mail e senha simultaneamente
    @TestCaseKey=RES-T31
    Scenario: Validar obrigatoriedade dos campos e-mail e senha simultaneamente
        
        Given que estou na tela de login do Resolva
            And os campos e-mail e senha estão vazios
            When clico no botão "Entrar"
            Then devo visualizar a mensagem "O email é obrigatório!" no campo e-mail
            And devo visualizar uma mensagem de obrigatoriedade no campo senha
            And ambos os campos devem possuir "aria-invalid" igual a "true"
            And o campo e-mail deve receber o foco