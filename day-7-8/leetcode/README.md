## 学習したこと: [LeetCode](https://leetcode.com/)

### - select メソッド -

- 参照

  問題: [Uncommon Words from Two Sentences](https://leetcode.com/problems/uncommon-words-from-two-sentences/)

  コード: [./codes/uncommon-words-from-two-sentences.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-8/leetcode/codes/uncommon-words-from-two-sentences.rb)

**`Array#filter`**

各要素に対してブロック評価をした値が真である要素を含める配列を返す。真となる要素が一つもなかった場合は、空の配列を返す。

```
[1, 2, 3, 4, 5].select { |num| num.even? }  # [2, 4]
```

**`Hash#filter`**

'key', 'value' のペアそれぞれにブロック評価し、真となるペアを含む配列を返す。

```
h = { "a" => 100, "b" => 200, "c" => 300 }

h.select { |k, v| k > "a" }     # { "b" => 200, "c" => 300 }
h.select { |k, v| v < 200 }     # { "a" => 100 }
```

**`key を評価し、真となる key の value を配列で返したい場合`**

例として、作成した Hash の 'value' をブロック評価し、真となる 'value' の 'key' を配列で返したい場合、または、作成した Hash の 'key' をブロック評価し、真となる 'key' の 'value' を配列で返したい場合には、以下のような方法がある。

```
hash = {
    "apple" => 10,
    "banana" => 1,
    "lemon" => 1,
    "melon" => 8
}

# 'value' をブロック評価し、真となる 'value' の 'key' を配列で返したい場合
keys = hash.select { |key, value| value == 1 }.keys
puts keys.join(' ')     # banana lemon

# 'key' をブロック評価し、真となる 'key' の 'value' を返したい場合
values = hash.select { |key, value| key == 'apple' }.values
puts values             # 10
```

---

### Date.parse

- 参照

  問題: [Number of Days Between Two Dates](https://leetcode.com/problems/number-of-days-between-two-dates/)

  コード: [./codes/number-of-days-between-two-dates.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-8/leetcode/codes/number-of-days-between-two-dates.rb)

有効な日付表現フォーマットを渡すことで、対応する日付オブジェクトを返す。

```
require 'date'

date = "2022-07-08"
puts date.class         # String

parseDate = Date.parse(date)
puts parseDate.class    # Date
```

**`日付差分を計算するときの注意点`**

日付の差分を計算すると、結果として`Rational`(有理数)オブジェクトが返される場合があり、正確な整数値ではなく分数となることがある。したがって、`to_i`を使用することで整数値に変換する必要がある場合がる。

```
require 'date'

date1 = "2022-07-08"
date2 = "2023-07-08"
result = (Date.parse(date1) - Date.parse(date2))

puts result.class           # Rational
puts result.to_i.abs        # 365
```

---

### Object#dup

- 参照

  問題: [Find Words That Can Be Formed by Characters
  ](https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/)

  コード: [./codes/find-words-that-can-be-formed-by-characters.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-8/leetcode/codes/find-words-that-can-be-formed-by-characters.rb)

`dup`メソッドはオブジェクトの複製を作成するメソッドであり、元のオブジェクトと同じ属性や値を持つ新しいオブジェクトを生成する。しかし、元のオブジェクトとは別のオブジェクトとなる。

また、大きな利点として`dup`メソッドによって複製されたオブジェクトに対して、破壊的メソッドを使用した場合でも元のオブジェクトに影響が及ぶことはない。

```
obj = "Sample"
obj_d = obj.dup

puts obj                      # Sample
puts obj_d                    # Sample
puts obj.equal?(obj_d)        # false
puts obj == obj_d             # true
```
