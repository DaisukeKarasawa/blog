# FizzBuzz
# Solution
def fizzBuzz(n)
    fizzBuzzHelper(1, n).join('-')
end

def fizzBuzzHelper(i, n)
    return judge(i) if i == n

    arr = []
    return arr << judge(i) << fizzBuzzHelper(i+1, n)
end

def judge(n)
    if n % 15 == 0
        return 'FizzBuzz'
    elsif n % 3 == 0
        return 'Fizz'
    elsif n % 5 == 0
        return 'Buzz'
    else
        return n
    end
end