## 学習したこと： [LeetCode](https://leetcode.com/)

### 目次

- Integer#digits

- 繰り返し処理

- ニムゲームの勝利法則

### - Integer#digits -

- 参照

  問題: [Palindrome number](https://leetcode.com/problems/palindrome-number/)

  コード: [./codes/palindrome_number.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-7/leetcode/codes/palindrome_number.rb)

整数を桁ごとの数字の配列に変換するために使用する。また、負の整数には使えない。

```
number = 12345
digitsArray = number.digits
puts digitsArray    # [5, 4, 3, 2, 1]
```

---

### - 繰り返し処理 -

- 参照

  問題: [Two Sum](https://leetcode.com/problems/two-sum/)

配列に繰り返し処理(while 文)を重複させ、計算量が増えてしまうところを、Hash を使用することで、配列の値を頭から記録しておくことで、一回の繰り返し処理で済ませることができる。

[私のコード](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-7/leetcode/codes/two-sum.rb)ランタイム：1911ms

```./codes/two-sum.rb
# 配列要素を二つ回して、全探索する

while i < nums.length
    j = i + 1

    while j < nums.length
        return [i, j] if target == (nums[i] + nums[j])
        j += 1
    end
    i += 1
end
```

[参照コード](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-7/leetcode/codes/two_sum_reference.rb)ランタイム：95ms

```./codes/two_sum_reference.rb
# Hashを使用して、組み合わせが来るまでのindexを記録しておく

num.each_with_index do |number, index|
    if hash[target - number]
        return [hash[target - number], index]
    else
        hash[number] = index
    end
end
```

---

### - ニムゲームの勝利法則 -

- 参照

  問題: [Nim Game](https://leetcode.com/problems/nim-game/)

  コード: [./codes/nim_game.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-7/leetcode/codes/nim_game.rb)

ニムゲームは、相手に 4 の倍数分の石の数にすれば勝てる。

```
// 残っている石の数が、4個の場合

行動パターンとしては、

1個取り出す = 3個
2個取り出す = 2個
3個取り出す = 1個

なので、次の番のプレーヤーは必ず最後の石を取ることができる。
つまり、残り4個の状態で回ってきた場合は、必ず負ける。

// 残っている石の数が、8個の場合

行動パターンとしては、

1個取り出す = 7個
2個取り出す = 6個
3個取り出す = 5個

なので、次のプレーヤーは必ず4個の石を残した状態で返すことができる。
つまり、残り8個の状態で回ってきた場合は、必ず負ける。

// 残っている石の数が、12個の場合

行動パターンとしては、

1個取り出す = 11個
2個取り出す = 10個
3個取り出す = 9個

なので、次のプレーヤーは必ず8個の石を残した状態で返すことができる。
つまり、残り12個の状態で回ってきた場合は、必ず負ける。
```
