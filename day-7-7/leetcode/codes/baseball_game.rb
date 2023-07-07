# Baseball Game
def rule(operate, arr)
    case operate
    when '+'
        arr << (arr[-1] + arr[-2])
    when 'D'
        arr << arr[-1] * 2
    when 'C'
        arr.pop
    else
        arr << operate.to_i
    end
    
    arr
end

def cal_points(operations)
    arr = []
    
    operations.each do |operate|
        arr = rule(operate, arr)
    end

    arr.sum
end

