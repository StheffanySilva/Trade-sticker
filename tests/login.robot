*** Settings ***
Documentation            Login tests
Resource       ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Variables ***
${email_valido}           papito@gmail.com
${senha_valida}           vaibrasil
${senha_invalida}         abc123

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials    ${email_valido}     ${senha_valida}  
    User Logged In

Nao deve logar com senha incorreta
    Go To Login Page
    Submit Credentials        ${email_valido}    ${senha_invalida}
    Toast Message Should Be   Credenciais inválidas, tente novamente!

<<<<<<< HEAD
Deve exibir notificacao toaster se a senha nao for preenchida
      Go To Login Page
      Submit Credentials         ${email_valido}     ${EMPTY}
      Toast Message Should Be    Por favor, infome a sua senha secreta!

Deve exibir notificacao toaster se o email nao for preenchido
      Go To Login Page
      Submit Credentials         ${EMPTY}     ${senha_valida}
      Toast Message Should Be    Por favor, infome seu email!

Deve exibir notiticacao toaster se email e senha nao forem preenchidos
      Go To Login Page
      Submit Credentials         ${EMPTY}     ${EMPTY}
      Toast Message Should Be    Por favor, infome suas credencias!
=======
# Deve exibir notificacao toaster se a senha nao for preenchida
# Deve exibir notificacao toaster se o email nao for preenchido
# Deve exibir notiticacao toaster se email e senha nao forem preenchidos
>>>>>>> 6efa1eb9077a3edc957bde53a893a405a36ab1ff
