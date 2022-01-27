# URL: https://atcoder.jp/contests/abc225/tasks/abc225_b

def solve(io)
  n = io.get

  g = Graph.new(n)
  (n-1).times do
    ai, bi = io.get2; ai -= 1; bi -= 1
    g.add_edge_b(ai, bi)
  end

  if (0...n).count { |u| g[u].size > 1 } == 1
    io.put "Yes"
  else
    io.put "No"
  end
end

require "procon"

require "procon/graph/graph"

solve(ProconIO.new)
