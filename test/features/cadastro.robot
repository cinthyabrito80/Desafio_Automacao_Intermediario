*** Settings ***
Resource   ../../src/auto/keywords/cadastro_kws.robot
Resource   ../../src/config/config.robot

*** Test Cases ***
Criação de Conta no Marketplace
    [Documentation]    Teste de criação de conta na página Marketplace
    Acessa Pagina Marketplace
    Clicar no link Sign in
    Inserir Endereco de Email
    Clicar Botao Create Account
    Fechar navegador
