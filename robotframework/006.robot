*** Settings ***
Documentation           Example test cases using the keyword-driven testing approach
Resource    pub.txt
Library    Collections


*** Test Cases ***
First Case
    log to console  ${var1}
    log to console  ${list1}
    log to console  ${list1}[0]
    log to console  ${list1[0]}
    log to console  ${dict1}['key1']
    log to console  ${dict1['key1']}
    log to console  ${dict1.key1}

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

Fourth Case
    [Documentation]  data-driven case
    [Template]  Calculate "${expression}" and Check Equals "${expected}"
    2+4    ${6}
    9-2    ${7}
    6*4    ${24}

Fifth Case
#    [Documentation]    BiultIn Library
    ${item}    Get Dictionary Keys    ${dict1}
    log  ${item}