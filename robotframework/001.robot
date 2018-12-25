#*** Settings ***
#Library             Selenium2Library                                          #导入库
#Suite Setup       open browser    http://www.zzu.edu.cn/    chrome          #所有用例执行前的动作
#Suite Teardown    close browser                                             #所有用例执行后的动作
##Test Setup                                                                  #每个用例执行前的动作
#Test Teardown                                                               #每个用例执行后的动作



*** Test Cases ***
#case01
#    [Documentation]  这里是注释文档，用例1；验证登录后，某个元素存在，且welcome+用户名元素存在
#    Wait until element is visible    xpath=/html/body/a         10                #登录元素还未加载出来
#    click element                    xpath=/html/body/a
#    input text                       xpath=/html/body/form/p[1]/input             ${username}
#    input text                       xpath=/html/body/form/p[2]/input             ${password}
#    click element                    xpath=/html/body/form/p[3]/button
#   #element should be visible       xpath=/html/body/p     用户名不存在
#    element text should be           xpath=/html/body/p     welcome${username}    #登录者身份不对

First Case
    Log  Hello World    warn

Second Case
    ${res}    evaluate  1+2+3
    should be equal    ${res}    ${6}

Third case
    ${res}  evaluate   'i'*3
    length should be  ${res}  3





*** Variables ***
#${username}   15902127953
#${password}   123456
