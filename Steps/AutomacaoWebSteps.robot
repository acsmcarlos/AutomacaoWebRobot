*** Settings ***
Documentation    Suite de testes

Resource    ../Resources/Settings.robot
Resource    ../Elements/Form_elements.robot


*** Keywords ***
que eu acesso o site
    Open Browser    ${URL}    ${BROWSER}    options=${BROWSER_OPTIONS}

eu preencho os campos corretamente
    [Arguments]    ${firs_name}    ${last_name}    ${job_title}

    Input Text    ${input_first_name}    ${firs_name}     
    Input Text    ${input_last_name}     ${last_name} 
    Input Text    ${input_job_title}     ${job_title}

    Capture Page Screenshot    home_01.png

marco checkbox radio button e clico em submit
    [Arguments]    ${educ}    ${sex}

    Click Element                    ${check_box}${educ}
    Click Element                    ${radio_button}${sex}
    Select From List By Index        ${select}                3
    Click Element                    ${calendario}
    Click Element                    ${dia}
    Click Element                    ${submit_button}
    Wait Until Element Is Visible    ${text}                  10
    Capture Page Screenshot          home_02.png

eu envio o formulario com sucesso

    ${text_expected}    Get Text    ${text}

    Element Text Should Be     ${text}        Thanks for submitting your form
    Capture Page Screenshot    home_03.png
    Close Browser

