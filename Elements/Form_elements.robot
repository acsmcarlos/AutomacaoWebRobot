*** Settings ***
Documentation    Elementos do forms

Library    SeleniumLibrary

*** Variables ***
${input_first_name}    id=first-name
${input_last_name}     id=last-name
${input_job_title}     id=job-title
${check_box}           id=radio-button-
${radio_button}        id=checkbox-
${submit_button}       xpath=//a[@class='btn btn-lg btn-primary']
${select}              id=select-menu
${calendario}          id=datepicker
${dia}                 xpath=//td[@class='today day']
${text}                xpath=//div[@class="alert alert-success"]/../h1