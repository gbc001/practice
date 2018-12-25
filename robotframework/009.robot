*** Settings ***
Library           reqLib.py

*** Test Cases ***
get test
    get    http://httpbin.org/get    action=hadogen
    check status code  200

