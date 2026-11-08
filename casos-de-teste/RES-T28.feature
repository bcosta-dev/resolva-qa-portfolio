Feature: Validar rejeição de e-mail com pontos consecutivos
    @TestCaseKey=RES-T28
    Scenario: Validar rejeição de e-mail com pontos consecutivos
        
        Given I am on the Resolva login page
            And I enter "teste..usuario@exemplo.com" in the email field
            And I enter "Teste123" in the password field
            When I click the "Entrar" button
            Then I should see the message "Digite um e-mail válido!"
            And the email field should receive focus
            And the email field should have aria-invalid set to "true"
            And the password field should not display an error message