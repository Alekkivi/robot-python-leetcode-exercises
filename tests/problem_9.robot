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

Returns False when not palindrome
    ${expected_false_result}=    Is Palindrome    ${51}
    Should Be Equal    ${expected_false_result}    ${False}

Returns True when palindrome
    ${expected_true_result}=    Is Palindrome    ${414}
    Should Be Equal    ${expected_true_result}    ${True}



