# Uncommon Words from Two Sentences
# Solution 1
def uncommon_from_sentences(s1, s2)
    hash = Hash.new(0)

    func = -> (str) {
        str.split(' ').each do |word|
            hash[word] += 1
        end
    }

    func.call(s1)
    func.call(s2)

    # value をブロック評価し、真となる key を配列で返す
    keys = hash.select { |key, value| value == 1 }.keys
    keys
end