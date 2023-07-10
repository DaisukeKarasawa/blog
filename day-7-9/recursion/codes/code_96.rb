def charFrequency(message)
    hash = Hash.new(0)

    # 文字列の空白を除き、ソートした上で処理
    message.delete(' ').split('').sort.each do |word|
        hash[word] += 1
    end

    results = hash.map { |key, value| "#{key} : #{value}" }
    results
end