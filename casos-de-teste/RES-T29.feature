Feature: Validar aceitação de e-mail com formato válido
    @TestCaseKey=RES-T29
    Scenario: Validar aceitação de e-mail com formato válido
        
        Given que estou na tela de login do Resolva
            And preencho o campo e-mail com "usuario@exemplo.com"
            And preencho o campo senha com "Teste123"
            When clico no botão "Entrar"
            Then o campo e-mail não deve apresentar mensagem de erro
            And o atributo "aria-invalid" do campo e-mail deve ser "false"
            And o campo e-mail deve manter o valor "usuario@exemplo.com"