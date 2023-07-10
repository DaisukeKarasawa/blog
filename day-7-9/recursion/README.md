## 学習したこと: [Recursion](https://recursionist.io/)

### - nil? と empty? -

- 参照

  問題: [重複の要素](https://recursionist.io/dashboard/problems/488)

  コード: [./codes/code_488.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-9/recursion/codes/code_488.rb)

'nil?' はそのオブジェクト自体が存在しないことを表し、'empty?' はそのオブジェクト自体は存在するが、その中身は空であることを表す。

**- Object#nil? -**

レシーバが nil であれば、真を返す。つまり、オブジェクト自体が存在しない。

```
array = []
hash = {}

puts array.nil?         # false
puts array[0].nil?      # true
puts hash.nil?          # false
puts hash[:hello]       # true
```

**- #empty? -**

`String#empty?`: 文字列が空(＝長さが 0)の時、真を返す。

```
puts 'hello'.empty?     # false
puts ' '.empty?         # false
puts ''.empty?          # true
```

`Array#empty?`: 自身の要素の数が 0 の時に真を返す。

```
array1 = []
array2 = [1, 2, 3]

puts array1.empty?      # true
puts array2.empty?      # false
```

`Hash#empty?`

ハッシュが空の時、真を返す。

```
hash = {}
puts hash.empty?    # true
```

---

### - Array#to_h -

- 参照

  問題: [パスワードに足りない数字](https://recursionist.io/dashboard/problems/82)

  コード: [.codes/code_82.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-9/recursion/codes/code_82.rb)

[key, value] をペアの配列とした上で、結果を Hash にして返す。

```
hash = [['hello', 'world'], [:apple, 100]].to_h
puts hash       # { "hello" => "world", :apple => 100 }
```

---

### - String#each_char -

- 参照

  問題: [アラブ人による頻度分析](https://recursionist.io/dashboard/problems/96)

  コード: [./codes/code_96.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-9/recursion/codes/code_96.rb)

文字列の各文字に対して繰り返し処理を行う。

```
str = 'helloworld'
str.each_char { |c| print c, '!' }      # h!e!l!l!o!w!o!r!l!d!
```
