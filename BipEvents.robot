*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL_EVENT}   https://dashboard.bip.events/login
${URL_PUBLIC_PAGE}  https://dashboard.bip.events/e/59/evenement1
${URL_TICKET}   https://dashboard.bip.events/event/63/tickets
${URL_ORDERS}   https://dashboard.bip.events/event/63/orders
${URL_ATTENDEES}    https://dashboard.bip.events/event/63/attendees
${URL_CUSTOMIZE}    https://dashboard.bip.events/event/63/customize
${URL_DASHBOARD}    https://dashboard.bip.events/organiser/6/dashboard
${URL_CASHLESS}     https://cashless.tn/
${BROSER}   chrome
${EMAIL}  **********
${PASSWORD}    *******
${N_RESERVATION}    04F8D9429B6680
${CODE}     *********
*** Test Cases ***
Login Dashboard
    Open Browser  ${URL_EVENT}    ${BROSER}
    Maximize Browser Window
    input text  id:email  ${EMAIL}
    input text  id:password  ${PASSWORD}
    click element  xpath://*[@id="main"]/section/form/div/div/div/div/div[4]/button
    click element   xpath://*[@id="main"]/section/div/div/div/div/div[2]/a[2]
Create Event
    click element   //*[@id="main"]/div/div[2]/div/div[1]/div/div/a
    sleep   1s
    input text  id:title   evenement125478
    click element   xpath:/html/body/div[4]/form/div/div/div[2]/div/div/div[2]/div[2]/div[6]
    sleep  1s
Edit Event
    Go to   ${URL_CUSTOMIZE}
    sleep   7s
Edit Conception of Event
    Go to   ${URL_CUSTOMIZE}
    sleep   7s
Create Ticket
    Go to   ${URL_TICKET}
    sleep   7s
Edit Ticket
    Go to   ${URL_TICKET}
    sleep   7s
Edit Conception of Ticket
    Go to   ${URL_CUSTOMIZE}
    sleep   7s
Edit Cashless Preferences
    Go to   ${URL_CUSTOMIZE}
    sleep   7s
List Orders
    Go to   ${URL_ORDERS}
    sleep   7s
List Attendees
    Go to   ${URL_ATTENDEES}
    sleep   7s
Invite Attendee
    Go to   ${URL_ATTENDEES}
    sleep   7s
Invite Several Attendees
    Go to   ${URL_ATTENDEES}
    sleep   7s
Export List of Attendees
    Go to   ${URL_ATTENDEES}
    sleep   7s
Send Message to Attendees
    Go to   ${URL_ATTENDEES}
    sleep   7s
Send Message to Attendee
    Go to   ${URL_ATTENDEES}
List of Sent Message
    Go to   ${URL_ATTENDEES}
Create Terminal
    Go to   ${URL_DASHBOARD}
Add Permision To Terminal
    Go to   ${URL_DASHBOARD}
List Tags NFC
    Go to   ${URL_DASHBOARD}
List transaction
    Go to   ${URL_DASHBOARD}
    sleep   7s
Add Product
    Go to   ${URL_DASHBOARD}
Add Access Codes
    Go to   ${URL_EVENT}
    sleep   7s
Add Question
    Go to   ${URL_EVENT}
Offline Payment Setting
    Go to   ${URL_CUSTOMIZE}
Buy Ticket OffLine
    Go to   ${URL_PUBLIC_PAGE}
    sleep   7s
Buy Ticket OnLine
    Go to   ${URL_PUBLIC_PAGE}
    sleep   7s
Login Cashless Account
    Go to   ${URL_CASHLESS}
Deactivate Wristband
    sleep   7s
Activate Wristband
    sleep   7s
Reload Wristband
    sleep   7s
*** Keywords ***