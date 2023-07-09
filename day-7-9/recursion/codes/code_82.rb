def missingIntegers(numbers)
    # ハッシュの作成
    hash = (1..numbers.length).map { |num| [num, false] }.to_h

    numbers.uniq.each do |num|
        hash[num] = true
    end

    results = hash.select { |key, value| !value }.keys
    results
end