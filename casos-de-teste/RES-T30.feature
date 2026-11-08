Feature: Validar obrigatoriedade do campo senha no login
    @TestCaseKey=RES-T30
    Scenario: Validar obrigatoriedade do campo senha no login
        
        Given que estou na tela de login do Resolva
            And preencho o campo e-mail com "usuario@exemplo.com"
            And mantenho o campo senha vazio
            When clico no botão "Entrar"
            Then o formulário deve apresentar uma mensagem de obrigatoriedade da senha
            And o campo senha deve receber o foco
            And o atributo "aria-invalid" do campo senha deve ser "true"
            And o campo e-mail não deve apresentar erro de validação