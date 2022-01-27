# :::::::::::::::::::: procon/math/fact
require "procon"

#
# 階乗およびその逆数を計算します.
# T は ModInt を使うことがほとんどでしょう.
#
class Fact(T)
  #
  # コンストラクタ
  #
  def initialize(@n : Int32)
    @table = Array.new(@n+1, T.multiplicative_identity)
    (1..@n).each do |i|
      @table[i] = @table[i-1] * i
    end

    @inv_table = Array.new(@n+1, T.multiplicative_identity)
    @inv_table[@n] //= @table[@n]
    (1..@n).reverse_each do |i|
      @inv_table[i-1] = @inv_table[i] * i
    end
  end

  #
  # 階乗のテーブルです
  #
  getter table : Array(T)

  #
  # 階乗逆数のテーブルです
  #
  getter inv_table : Array(T)

  #
  # 階乗を返します
  #
  def fact(n : Int)
    @table[n]
  end

  #
  # 順列数 nPr を返します
  #
  def perm(n : Int, r : Int)
    @table[n] * @inv_table[n-r]
  end

  #
  # 組み合わせ数 nCr を返します
  #
  def combi(n : Int, r : Int)
    @table[n] * @inv_table[r] * @inv_table[n-r]
  end

  #
  # 重複組み合わせ数 nHr を返します
  #
  def homo(n : Int, r : Int)
    combi(n+r-1, r)
  end

  # ---------- private methods

  @table : Array(T)
  @inv_table : Array(T)
end
# ::::::::::::::::::::
