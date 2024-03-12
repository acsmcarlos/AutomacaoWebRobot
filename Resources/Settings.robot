*** Settings ***
Documentation    Configs

Library    SeleniumLibrary

# ========================================================================================
*** Variables ***
${URL}                https://formy-project.herokuapp.com/form
${BROWSER}            chrome
${BROWSER_OPTIONS}    add_experimental_option("excludeSwitches", ["enable-logging"])