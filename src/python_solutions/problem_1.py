
def two_sum(nums, target):
    result = []
    for i, num in enumerate(nums):
        for j in range(i + 1, len(nums)):
            print(f"{num} + {nums[j]}")
            if num + nums[j] == target:
                result.append(i)
                result.append(j)
                return result
    return []

