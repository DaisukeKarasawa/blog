## 学習したこと: [LeetCode](https://leetcode.com/)

### 目次

- Array.new

- String#chars

---

### - Array.new -

- 参照

  問題: [Transpose Matrix](https://leetcode.com/problems/transpose-matrix/)

  コード: [.codes/transpose-matrix.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-11/leetcode/codes/transpose-matrix.rb)

**`Array.new`**

長さと要素の値を指定した上で、配列を作成する。

要素が 1 つの場合、数値であれば配列の長さ、配列であればそのまま配列が作成される。

```
arr1 = Array.new(3, 'foo')
arr2 = Array.new([1, 2, 3])
arr3 = Array.new(1)

p arr1              # ["foo", "foo", "foo"]
p arr2              # [1, 2, 3]
p arr3.length       # 1
```

また、指定した長さ n の配列を生成し、各要素のインデックスを引数としてブロック処理を実行することができる。

```
arr1 = Array.new(3) { |index| "hoge#{index}" }
arr2 = Array.new(3) { 'foo' }

p arr1      # ["hoge0", "hoge1", "hoge2"]
p arr2      # ["foo", "foo", "foo"]
```

**`2 次元配列の作成`**

配列作成のブロック処理を利用し、特定の n 行 m 列の 2 次元配列を作成する。

```
# 3 行 4 列の2次元配列の作成
n = 3
m = 4
arr = Array.new(3) { Array.new(m, 0) }

p arr       # [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
```

---

### - String#chars -

- 参照

  問題: [Counting Bits](https://leetcode.com/problems/counting-bits/)

  コード: [.codes/counting-bits.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-11/leetcode/codes/counting-bits.rb)

文字列の各文字を文字列の配列で返す。

```
str = 'HelloWorld'
arr = str.chars

p arr       # ["H", "e", "l", "l", "o", "W", "o", "r", "l", "d"]
```

また、ブロックが指定された場合は、`String#each_char`と同じように動作する。

```
str = 'HelloWorld'
arr = []
str.each_char do |s|
    arr << s
end

p arr       # ["H", "e", "l", "l", "o", "W", "o", "r", "l", "d"]
```
