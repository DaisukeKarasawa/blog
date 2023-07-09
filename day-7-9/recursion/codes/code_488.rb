# 重複の要素
# Solution
def firstRepeatingNumber(nums)
    hash = Hash.new(0)

    repeat = -> (n) {
        return hash if n == nums.length

        hash[nums[n]] += 1
        repeat.call(n+1)
    }

    results = repeat.call(0).select { |key, value| 1 < value}.keys
    # results が空の時、-1を返す
    results.empty? ? -1 : results.shift
end