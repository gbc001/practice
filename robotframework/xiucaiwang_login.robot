*** Settings ***
Library           Selenium2Library

*** Test Cases ***
test01
    [Documentation]    测试秀财网
    Open Browser    https://www.xiucai.com    chrome
    sleep  15
#    wait until element is visible  xpth=/html/body/div[19]/div[1]  15
    Click Element    xpath=/html/body/div[19]/a
    Maximize Browser Window
    click element    xpath=//*[@id="a-login"]
    Sleep    1
    Input Text       xpath=//*[@id="account"]    13911112222
    Input Text       xpath=//*[@id="password"]    111111
    Click element    xpath=//*[@id="normal"]/div/div[1]/ul/li[1]/a
#    wait until element is visible  xpth=//*[@id="nc_1__scale_text"]/span
#    ${title_1}    Get Title
#    Click Button     /html/body/div[4]/div[1]/div[1]/div[1]/div[2]/ul/li[4]/a[3]
#    Sleep     2
#    ${title_2}    Get Title
#    should not contain    ${title_2}    ${title_1}
    Close browser

