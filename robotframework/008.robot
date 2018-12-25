*** Settings ***
Documentation           Example test cases using the keyword-driven testing approach
Resource    pub.txt
Library    Collections
Library    mylib.py
Library    yourlib.py    init_data


*** Test Cases ***
Sixth Case
    [Documentation]  custom keywords
#    md5加密：e2fc714c4727ee9395f324cd2e7f331f    对应：abcd
#    md5加密：81dc9bdb52d04dc20036dbd8313ed055    对应：1234
    ${sign}    gen sigin  @{list1}
    log to console  ${sign}
    ${members}  add member  ${var1}
    log to console  ${members}
    ${member}  add member  LLisisi
    log to console  ${members}