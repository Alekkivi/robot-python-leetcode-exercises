*** Keywords ***
As Integer List
    [Arguments]    @{values}
    ${ints}=    Evaluate    [int(x) for x in $values]
    RETURN    ${ints}
