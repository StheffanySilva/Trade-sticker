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
=======

>>>>>>> b429f0b588172ef3d2c8ac1981431d677fba3cf7
Deve exibir notificacao toaster se a senha nao for preenchida
      Go To Login Page
      Submit Credentials         ${email_valido}     ${EMPTY}
      Toaster No Password or Email    Por favor, infome a sua senha secreta!

Deve exibir notificacao toaster se o email nao for preenchido
      Go To Login Page
      Submit Credentials         ${EMPTY}     ${senha_valida}
     Toaster No Password or Email    Por favor, infome seu email!

Deve exibir notiticacao toaster se email e senha nao forem preenchidos
      Go To Login Page
      Submit Credentials         ${EMPTY}     ${EMPTY}
<<<<<<< HEAD
      Toaster No Password e Email    Por favor, infome suas credencias!

        
=======
      Toast Message Should Be    Por favor, infome suas credencias!

>>>>>>> b429f0b588172ef3d2c8ac1981431d677fba3cf7
