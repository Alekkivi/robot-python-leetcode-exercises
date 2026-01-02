*** Settings ***
Library    robot_lib.leetcode_library.LeetCodeLibrary

*** Test Cases ***
Returns a list
    ${result}=    Two Sum    [2, 7, 11, 15]    9
    Should Be True    ${{ isinstance($result, list) }}

Result list contains two items
    ${result}=    Two Sum    [2, 7, 11, 15]    9
    Length Should Be    ${result}    2

Result list contains only integers
    ${result}=    Two Sum    [2, 7, 11, 15]    9
    FOR    ${item}    IN    @{result}
            Should Be True    ${{ isinstance($item, int) }}
    END