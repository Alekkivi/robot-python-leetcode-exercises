
def two_sum(nums, target):
    result = []
    for i, num in enumerate(nums):
        for j in range(i + 1, len(nums)):
            if num + nums[j] == target:
                result.append(i)
                result.append(j)
                return result
    return []

print(two_sum([1,2,4,6,2134,53,2,1,4,6,2], 99))


