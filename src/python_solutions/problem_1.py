
def two_sum(nums, target):
    seen = {}

    for i, num in enumerate(nums):
        missing_val = target - num
        if missing_val in seen:
            return [seen[missing_val], i]
        else:
            seen[num] = i
    return []    