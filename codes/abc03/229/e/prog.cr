# URL: https://atcoder.jp/contests/abc229/tasks/abc229_e

def solve(io)
  n, m = io.get2

  e = Array.new(n) { [] of Int32 }
  m.times do
    a, b = io.get2; a -= 1; b -= 1
    e[a] << b
  end

  uf = UnionFind.new(n)
  r = [] of Int32
  (0...n).reverse_each do |i|
    r << uf.count_forests - i - 1
    e[i].each do |j|
      uf.unite(i, j)
    end
  end

  io.put_c r.reverse
end

require "procon"

require "procon/data_structure/union_find"

solve(ProconIO.new)
