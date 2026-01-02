*** Settings ***
Library    robot_lib.leetcode_library.LeetCodeLibrary

*** Test Cases ***
Returns a list
    ${result}=    Two Sum    [2, 7, 11, 15]    9
    Should Be True    ${{ isinstance($result, list) }}
