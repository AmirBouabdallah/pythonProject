
*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Login Test

    Open Browser    https://dashboard.bip.events/login  chrome
    input text  id:email
    input text  id:password
    click element  xpath://*[@id="main"]/section/form/div/div/div/div/div[4]/button
    click element   xpath://*[@id="main"]/section/div/div/div/div/div[2]/a[2]
    click element   //*[@id="main"]/div/div[2]/div/div[1]/div/div/a
    sleep   1s
    input text  id:title   evenement125478
    click element   xpath://div[6]


*** Keywords ***
