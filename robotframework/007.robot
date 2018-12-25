*** Settings ***
Documentation           Example test cases using the keyword-driven testing approach
Resource    pub.txt
Library    Collections
Library    mylib.py
Library    yourlib.py


*** Test Cases ***
First Case
    [Documentation]  variable type
    log to console  ${var1}
    log to console  ${list1}[0]
    log to console  ${list1[0]}
    log to console  ${dict1}['key1']
    log to console  ${dict1['key1']}
    log to console  ${dict1.key1}

Second Case
    [Documentation]  Default values with user-keywords
    calculate and check equals
    calculate and check equals    1+5
    calculate and check equals    7-2    ${5}
    calculate and check equals    expression=6+3    expected=${9}

Third Case
    [Documentation]  Varargs with user-keywords
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
    [Documentation]    BiultIn Library
    [Template]  Calculate "${expression}" and Check Equals "${expected}"
    2+4    ${6}
    9-2    ${7}
    6*4    ${24}
#    ${item}    Get Dictionary Keys    ${dict1}
#    log  ${item}

Sixth Case
    [Documentation]  custom keywords  81dc9bdb52d04dc20036dbd8313ed055
#    md5加密：e2fc714c4727ee9395f324cd2e7f331f    对应：abcd
#    md5加密：81dc9bdb52d04dc20036dbd8313ed055    对应：1234
    ${sign}    gen sigin  @{list1}
    log to console  ${sign}
    ${members}  add member  ${var1}
    log to console  ${members}
    ${member}  add member  LLisisi
    log to console  ${members}