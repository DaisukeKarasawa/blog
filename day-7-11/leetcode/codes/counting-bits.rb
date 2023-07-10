# Counting Bits
# Soluion 1
def count_bits(n)
    # 各文字の配列の作成
    arr = (0..n).map { |num| num.to_s(2).chars.count('1') }
    arr
end

# Solution 2
def count_bits(n)
    (0..n).map { |num| count_ones(num) }
end

def count_ones(num)
    count = 0
    while num > 0
        count += 1
        num &= (num - 1)
    end

    count
end