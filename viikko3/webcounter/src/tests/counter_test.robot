*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When the value is set to 10 the counter is 10
    Go To  ${HOME_URL}
    Input Text  new_value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
