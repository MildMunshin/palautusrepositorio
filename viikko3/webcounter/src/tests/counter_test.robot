*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice and then reset the counter is zero
    Go To  ${HOME_URL}
    Input Text  value  10
    Page Should Contain  nappia painettu 10 kertaa
