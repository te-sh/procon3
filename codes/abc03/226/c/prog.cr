# URL: https://atcoder.jp/contests/abc226/tasks/abc226_c

def solve(io)
  n = io.get

  g = Graph.new(n)
  t = Array.new(n, 0_i64)

  n.times do |i|
    t[i] = io.get(Int64)
    ki = io.get
    ai = io.get_a(ki); ai.map!(&.- 1)
    ai.each do |aij|
      g.add_edge(i, aij)
    end
  end

  r = 0_i64
  g.bfs(n-1) do |v|
    r += t[v]
  end

  io.put r
end

require "procon"

require "procon/graph/graph"

solve(ProconIO.new)
