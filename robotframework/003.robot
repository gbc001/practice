*** Settings ***
Documentation           Example test cases using the keyword-driven testing approach


*** Variables ***
${var1}     1+2+3
@{list1}    a   b   c   ${var1}
&{dict1}    key1=sf    key2=${list1}


*** Test Cases ***
First Case
    log to console  ${var1}
    log to console  ${list1}
    log to console  ${dict1}

Second Case
    calculate and check equals    ${var1}    ${6}

Third Case
    Calculate and Check Equals    'i'*3    iii



*** Keywords ***
Calculate and Check Equals
    [Arguments]  ${expression}  ${expected}
    ${res}    Evaluate    ${expression}
    should be equal  ${res}    ${expected}