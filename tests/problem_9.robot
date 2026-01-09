*** Settings ***
Library    robot_lib.leetcode_library.LeetCodeLibrary
Resource    resources/common_keywords.robot

*** Test Cases ***
Returns boolean
    ${result}=     Is Palindrome    ${5}
    Should Be True    ${{ isinstance($result, bool)}}

Negative value can not be palindromes
    ${result}=    Is Palindrome    ${-42134}
    Should Be Equal    ${result}    ${False}

Single digit numbers are always palindromes
    @{single_digits}    Create List    0    1    2    3    4    5    6    7    8    9
    ${ints}=    As Integer List    @{single_digits}
    FOR    ${num}    IN    @{ints}
        ${result}=    Is Palindrome    ${num}
        Should Be Equal    ${result}    ${True}
    END

