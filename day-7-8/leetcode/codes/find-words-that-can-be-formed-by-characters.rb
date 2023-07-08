#  Find Words That Can Be Formed by Characters
def count_characters(words, chars)
    result = 0

    words.each do |word|
        result += word.length if create(word, chars)
    end

    result
end

def create(word, chars)
    # 複製の生成
    temp = chars.dup

    creating = -> (n) {
        return true if n == word.length
        return false unless temp.include?(word[n])
        
        # chars に影響はない
        temp.slice!(temp.index(word[n]))
        creating.call(n+1)
    }

    creating.call(0)
end