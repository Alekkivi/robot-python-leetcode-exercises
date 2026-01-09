*** Settings ***
Library    robot_lib.leetcode_library.LeetCodeLibrary

*** Test Cases ***
Returns boolean
    ${result}=     Is Palindrome    ${5}
    Should Be True    ${{ isinstance($result, bool)}}