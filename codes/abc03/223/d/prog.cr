# URL: https://atcoder.jp/contests/abc223/tasks/abc223_d

def solve(io)
  n, m = io.get2

  g1 = Graph.new(n)
  g2 = Graph.new(n)
  m.times do
    a, b = io.get2; a -= 1; b -= 1
    g1.add_edge(a, b)
    g2.add_edge(b, a)
  end

  j = Array.new(n) { |i| g2[i].size }

  h = Heap(Int32).new
  j.each_with_index do |ji, i|
    h.push(i) if ji == 0
  end

  r = [] of Int32
  until h.empty?
    u = h.pop
    r << u

    g1[u].each do |v|
      j[v] -= 1
      h.push(v) if j[v] == 0
    end
  end

  if j.sum == 0
    io.put_a r.map(&.+ 1)
  else
    io.put -1
  end
end

require "procon/data_structure/heap"

require "procon/graph/graph"

require "procon"

solve(ProconIO.new)
