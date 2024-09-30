*** Settings ***
Resource   ../../src/auto/keywords/cadastro_kws.robot
Resource   ../../src/config/config.robot

*** Test Cases ***
Criação de Conta no Marketplace
    [Documentation]    Teste de criação de conta na página Marketplace
    Acessa Pagina Marketplace
    Clicar no link Sign in
    Inserir Endereco de Email Criar Conta
    Preencher formulário Sua Informação Pessoal
    Preencher formulário Seu Endereço
    Verificar se a conta foi criada com sucesso
    Fechar navegador
