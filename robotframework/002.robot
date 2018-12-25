*** Variables ***
${var1}     value
@{list1}    a   b   c   ${var1}
&{dict1}    key1=sf    key2=${list1}


*** Test Cases ***
First Case
#    log to console  ${var1}
#    log to console  ${list1}
#    log to console  ${dict1}
    log to console  ${var1}
    log to console  ${list1}
    log to console  ${list1}[0]
    log to console  ${list1[0]}
    log to console  ${dict1}['key1']
    log to console  ${dict1['key1']}
    log to console  ${dict1.key1}

Second Case
    ${res}  evaluate  1+2+3
    should be equal    ${res}    ${6}

Third Case
    ${res}  evaluate  'i'*3
    length should be  ${res}  3