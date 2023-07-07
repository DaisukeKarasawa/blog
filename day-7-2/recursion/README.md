## 学習したこと: [Recursion](https://recursionist.io/)

### - String と Array の大きな違い -@

- 参照

  問題: [文字列へ変換](https://recursionist.io/dashboard/problems/149)

  コード: [./codes/code_149.rb](https://github.com/DaisukeKarasawa/blog/blob/main/day-7-2/recursion/codes/code_149.rb)

#### 例：`str += "a"`を n 回繰り返す のと `arr << "a"`を n 回繰り返したのちに.join する との効率の違い

**`str += "a"`を n 回繰り返す**

`str += "a"`を n 回繰り返す場合、文字列の結合操作が n 回行われる。その結合操作には、新しい文字列を作成するために既存の文字列をコピーする必要がある。このため、`str`に`"a"`を追加するたびに、新しい文字列が作成され、メモリ上でデータのコピーが発生する。
結果、この方法では、文字列の結合が頻繁に行われるため。時間とメモリのオーバーヘッドが大きくなる。

```./codes/code_149.rb
stringArr.each_with_index do |s, i|
    str += insertStr.call(s, i)
end
```

**`arr << "a"`を n 回繰り返したのちに.join する**

`arr << "a"`を n 回繰り返し、最後に`.join`を行う場合、配列に要素を追加する操作(`arr << "a"`)が n 回行われ、最後に`.join`を使って配列の要素を結合する。配列に要素を追加する操作は、新しい要素を配列に追加するだけであり、既存の要素のコピーは基本的(※1)には行われない。`.join`の操作では、配列の要素を結合するため、最終的に新しい文字列が作成されるが、文字列結合の操作を n 回行うよりは効率的である。

(※1)配列の容量は事前に確保され、要素が追加されると容量が不足する場合にのみ自動的により大きなメモリ領域を確保する。その際、新しいメモリ領域に要素がコピーされることがある。

```./codes/code_149.rb
stringArr.each_with_index do |s, i|
    result << insertStr.call(s, i)
end

result.join
```
