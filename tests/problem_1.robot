*** Settings ***
Library    robot_lib.leetcode_library.LeetCodeLibrary

*** Variables ***
@{DEFAULT_NUMS}     2    7    11    15
${DEFAULT_TARGET}  9

*** Keywords ***
As Integer List
    [Arguments]    @{values}
    ${ints}=    Evaluate    [int(x) for x in $values]
    RETURN    ${ints}

Get Default values
    @{nums}=    As Integer List    @{DEFAULT_NUMS}
    ${target}=  Convert To Integer    ${DEFAULT_TARGET}
    RETURN    ${nums}    ${target}

*** Test Cases ***
Returns a list
    ${nums}    ${target}=    Get Default values
    ${result}=    Two Sum    ${nums}    ${target}
    Should Be True    ${{ isinstance($result, list) }}

Result list contains two items
    ${nums}    ${target}=    Get Default values
    ${result}=    Two Sum    ${nums}    ${target}
    Length Should Be    ${result}    2

Result list contains only integers
    ${nums}    ${target}=    Get Default values
    ${result}=    Two Sum    ${nums}    ${target}
    FOR    ${item}    IN    @{result}
        Should Be True    ${{ isinstance($item, int) }}
    END

Returns correct indices
    ${nums}    ${target}=    Get Default values
    @{expected}=    As Integer List    0    1
    ${result}=    Two Sum    ${nums}    ${target}
    Should Be Equal    ${result}    ${expected}

Returns empty list when target not found
    ${nums}     As Integer List    @{DEFAULT_NUMS}
    ${impossible_target}=      Convert to integer      72
    ${result}=    Two Sum    ${nums}    ${impossible_target}
    Should Be True    ${{ isinstance($result, list) }}
    Length Should Be    ${result}    0

