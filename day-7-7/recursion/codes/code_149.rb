# 文字列へ変換
# Solution 1
def joinWords(stringArr,delimiter)
    stringArr.join(delimiter)
end

# Solution 2(1)
def joinWords(stringArr,delimiter)
    str = ''

    insertStr = -> (s, i) {
        i == stringArr.length-1 ? s : "#{s}#{delimiter}"
    }

    stringArr.each_with_index do |s, i|
        # 新しい文字列が作成される
        str += insertStr.call(s, i)
    end

    str
end

# Solution 2(2)
def joinWords(stringArr,delimiter)
    result = []
    str = ''

    insertStr = -> (s, i) {
        # 新しい文字列が作成される
        return s[i] if i == stringArr.length-1
        str += s[i] + delimiter + insertStr.call(s, i+1)
    }

    insertStr.call(stringArr, 0)
end

# Solution 3
def joinWords(stringArr,delimiter)
    result = []

    insertStr = -> (s, i) {
        i == stringArr.length-1 ? s : "#{s}#{delimiter}"
    }

    stringArr.each_with_index do |s, i|
        result << insertStr.call(s, i)
    end

    result.join
end