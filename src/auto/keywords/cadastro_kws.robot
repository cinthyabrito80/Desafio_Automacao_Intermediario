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

Inserir Endereco de Email Criar Conta
    [Documentation]    Insere o email para criar uma nova conta
    Fill Text    ${input_email_create}    manuela_bernardes@alvesbarcelo.com.yz
    Click    ${submit_create_button}

Preencher formulário Sua Informação Pessoal
    [Documentation]    Preencher formulário de criação de conta
    Wait For Elements State    ${input_first_name}    visible
    Fill Text    ${input_first_name}    Manuela
    Fill Text    ${input_last_name}     Bernardes
    Fill Text    ${input_password}      I6g7RzbF9k

Preencher formulário Seu Endereço
    Fill Text    ${first_name}    Manuela Camila Hadassa
    Fill Text    ${last_name}     Bernardes
    Fill Text    ${company}     RobotFramework Ltda
    Fill Text    ${input_address}       Travessa das Adálias, 693
    Fill Text    ${input_city}          São Paulo
    Wait For Elements State    ${state_select}    visible    15s  # Aumenta o tempo de espera
    Click    ${state_select}  # Clique para abrir o dropdown
    Wait For Elements State    ${state_select}    enabled    10s  # Aguarda o dropdown estar habilitado
    Select Options By    ${state_select}    text    Florida  # Seleciona a opção
    Fill Text    ${input_postcode}    05490
    Fill Text    ${input_phone}    (11) 99624-4406
    Click    ${submit_account_button}

Verificar se a conta foi criada com sucesso
    [Documentation]    Verifica se a conta foi criada com sucesso
    Wait For Elements State    ${account_welcome_div}    visible    15s  # Aumentando o tempo de espera para a mensagem de sucesso
    ${result_text}=    Get Text    ${account_welcome_div}  # Atribuindo o texto à variável result_text
    Should Contain    ${result_text}    Welcome to your account    

Fechar navegador
    [Documentation]    Fecha o navegador ao final do teste
    Close Browser
