## 学習したこと: [LeetCode](https://leetcode.com/)

### - select メソッド -

- 参照

  問題: [Uncommon Words from Two Sentences](https://leetcode.com/problems/uncommon-words-from-two-sentences/)

  コード: [./codes/uncommon-words-from-two-sentences.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-8/leetcode/codes/uncommon-words-from-two-sentences.rb)

**Array#filter**

各要素に対してブロック評価をした値が真である要素を含める配列を返す。真となる要素が一つもなかった場合は、空の配列を返す。

```
[1, 2, 3, 4, 5].select { |num| num.even? }  # [2, 4]
```

**Hash#filter**

'key', 'value' のペアそれぞれにブロック評価し、真となるペアを含む配列を返す。

```
h = { "a" => 100, "b" => 200, "c" => 300 }

h.select { |k, v| k > "a" }     # { "b" => 200, "c" => 300 }
h.select { |k, v| v < 200 }     # { "a" => 100 }
```

**key を評価し、真となる key の value を配列で返したい場合**

例として、作成した Hash の 'value' をブロック評価し、真となる 'value' の 'key' を配列で返したい場合、または、作成した Hash の 'key' をブロック評価し、真となる 'key' の 'value' を配列で返したい場合には、以下のような方法がある。

```./codes/uncommon-words-from-two-sentences.rb
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