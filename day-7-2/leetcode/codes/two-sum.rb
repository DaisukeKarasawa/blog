# Two Sum
def two_sum(nums, target)
    i = 0
    ans = []

    while i < nums.length
        j = i + 1

        while j < nums.length
            return [i, j] if target == (nums[i] + nums[j])
            j += 1
        end
        i += 1
    end
end