*** Settings ***
Documentation    Suite de cenarios de testes

Library    ${EXECDIR}/Resources/Users.py

Resource    ${EXECDIR}/Resources/Settings.robot
Resource    ${EXECDIR}/Elements/Form_elements.robot
Resource    ${EXECDIR}/Steps/AutomacaoWebSteps.robot


**** Test Cases ***
Cenario 1:Preencher Formulario Masculino

    &{user}    Factory User Masc

    FOR    ${i}    IN RANGE    3
        Given que eu acesso o site
        When eu preencho os campos corretamente              ${user}[name]    ${user}[lastname]    ${user}[job]
        And marco checkbox radio button e clico em submit    1                1
        # Sleep                                                3
        Then eu envio o formulario com sucesso
    END

# Cenario 2:Preencher Formulario Feminino

#     &{user}    Factory User Feme

#     FOR    ${i}    IN RANGE    3
#         Given que eu acesso o site
#         When eu preencho os campos corretamente              ${user}[name]    ${user}[lastname]    ${user}[job]
#         And marco checkbox radio button e clico em submit    3                2
#         Sleep                                                3
#         Then eu envio o formulario com sucesso
#     END
