# Palindrome Number
# Solution 1
def is_palindrome(x)
    return false if x < 0

    x = x.to_s
    length = x.length
    
    (0...length/2).each do |index|
        eturn false if x[index] != x[length-1-index]
    end

    true
end

# Solution 2
def is_palindrome(x)
    return false if x < 0
    x.to_s.reverse == x.to_s
end

# Solution 3
def is_palindrome(x)
    return false if x < 0
    # 整数を数字の配列へ変換
    x.digits.join.to_i == x
end