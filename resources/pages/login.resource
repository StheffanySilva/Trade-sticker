*** Settings ***
Documentation            Login Page

Library    Browser

*** Keywords ***
Go To Login Page
    New Page           https://trade-sticker-dev.vercel.app


Submit Credentials
    [Arguments]      ${email}        ${password}
    Fill Text        css=input[name="email"]        ${email}
    Fill Text        css=input[name="password"]     ${password}
    Click            css=button >> text=Entrar
    
Toast Message Should Be
    [Arguments]         ${expected_message}
    ${locator}          Set Variable          css=.Toastify__toast-body div >> text=${expected_message}

<<<<<<< HEAD
    Wait For Elements State    ${locator}    visible    3
=======
  ${locator}
    ...            Set Variable
    ...            css=.Toastify__toast-body div >> text=${expected_message} 
    Wait For Elements State      ${locator}     visible    5
    
>>>>>>> b429f0b588172ef3d2c8ac1981431d677fba3cf7
    # Wait For Elements State     css=.Toastify__toast-body div >> text=${expected_message}     visible     15

Toaster No Password or Email
    [Arguments]        ${expected_message}
    ${locator}         Set Variable            css=.Toastify__toast-body div >> text=${expected_message}

Toaster No Password e Email
    [Arguments]        ${expected_message}
    ${locator}         Set Variable            css=.Toastify__toast-body div >> text=${expected_message}



    
