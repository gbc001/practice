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
    calculate and check equals
    calculate and check equals    1+5    ${6}
    calculate and check equals    7-2    ${5}
    calculate and check equals    expression=6+3    expected=${9}

Third Case
    Varargs keyword    a    f    ${var1}
    Varargs keyword    @{list1}    ${var1}
    Kwargs keyword    key1=value1    key2=789
    Kwargs keyword    &{dict1}
    Kwargs keyword    &{dict1}    mykey=tototo    &{dict1}

Fourth case
    Calculate "2+4" and Check Equals "${6}"


*** Keywords ***
Calculate and Check Equals
    [Arguments]  ${expression}=3+3  ${expected}=${6}
    ${res}    Evaluate    ${expression}
    log to console    result = ${res}
    should be equal  ${res}    ${expected}

Varargs keyword
    [Arguments]  @{args}
    log to console  - - - - - - - -
    : FOR    ${item}    IN    @{args}
    \    log to console  ${item}

Kwargs keyword
    [Arguments]  &{Kwargs}
    log to console  - - - - - - - -
    : FOR    ${item}    IN    @{kwargs.items()}
    \    log to console  ${item}

Calculate "${expression}" and Check Equals "${expected}"
    Calculate and Check Equals    ${expression}    ${expected}