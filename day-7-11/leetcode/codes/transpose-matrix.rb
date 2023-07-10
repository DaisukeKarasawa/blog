# Transpose Matrix
# Solution 1
def transpose(matrix)
    n = matrix.length
    m = matrix[0].length
    # 2次元配列の作成
    arr = Array.new(m) { Array.new(n, 0) }
    i = 0

    while i < n
        j = 0
        while j < m
            arr[j][i] = matrix[i][j]
            j += 1
        end
        i += 1
    end

    arr
end

# Solution 2
def transpose(matrix)
    n = matrix.length
    m = matrix[0].length
    # 2次元配列の作成
    arr = Array.new(m) { Array.new(n, 0) }

    matrix.each_with_index do |col1, i|
        col1.each_with_index do |col2, j|
            arr[j][i] = col2
        end
    end

    arr
end