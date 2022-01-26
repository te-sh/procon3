# URL: https://atcoder.jp/contests/abc226/tasks/abc226_e

def solve(io)
  n, m = io.get2

  g = Graph.new(n)
  m.times do
    ui, vi = io.get2; ui -= 1; vi -= 1
    g.add_edge_b(ui, vi)
  end

  visited = Array.new(n, false)
  ne = [] of Int32
  nv = [] of Int32
  (0...n).each do |i|
    next if visited[i]
    r = [i]
    q = [i]
    visited[i] = true
    until q.empty?
      u = q.pop
      g[u].each do |v|
        unless visited[v]
          visited[v] = true
          r << v
          q.push(v)
        end
      end
    end
    nv << r.size
    ne << r.sum { |ri| g[ri].size } // 2
  end

  nf = nv.size
  if (0...nf).any? { |i| nv[i] <= 2 || nv[i] != ne[i] }
    io.put 0
  else
    io.put Mint.new(2) ** nf
  end
end

require "procon"

require "procon/graph/graph"

require "procon/math/mod_int"
ModInt.new_type(Mint, 998244353)

solve(ProconIO.new)
