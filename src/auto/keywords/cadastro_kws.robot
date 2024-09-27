*** Settings ***
Library    Browser
Resource   ../elements/cadastro_ets.resource

*** Keywords ***
Acessa Pagina Marketplace
    [Documentation]    Acessar a página Marketplace
    New Browser    chromium    headless=False
    New Page    ${URL}    wait_until=load
    Wait For Elements State    ${sign_in}    visible    10s

Clicar no link Sign in
    [Documentation]    Clicar no link Sign in
    Click    ${sign_in}
    Wait For Elements State    ${create_account_form}    visible    10s

Inserir Endereco de Email
    [Documentation]    Insere o email para criar uma nova conta
    Fill Text    ${email_create_field}    test_user@example.com

Clicar Botao Create Account
    [Documentation]    Clica no botão de criação de conta
    Click    ${submit_create_button}

Fechar navegador
    [Documentation]    Fecha o navegador ao final do teste
    Close Browser
