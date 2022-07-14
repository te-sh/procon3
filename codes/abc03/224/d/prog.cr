# URL: https://atcoder.jp/contests/abc224/tasks/abc224_d

N = 9

def solve(io)
  e = Array.new_md(N, N, false)
  m = io.get
  m.times do
    u, v = io.get2; u -= 1; v -= 1
    e[u][v] = e[v][u] = true
  end
  p = io.get_a(N-1); p.map!(&.- 1)
  N.times do |i|
    p << i unless p.includes?(i)
  end

  ids = (0...N).to_a.permutations.map { |s| to_id(s) }
  idx = ids.map_with_index { |id, i| {id, i} }.to_h

  g = Graph.new(ids.size)
  ids.each do |id1|
    s1 = to_stat(id1)
    (0...(N-1)).each do |i|
      next unless e[s1[i]][s1[N-1]]
      s2 = s1.dup
      s2[i], s2[N-1] = s2[N-1], s2[i]
      id2 = to_id(s2)
      g.add_edge(idx[id1], idx[id2])
    end
  end

  d = Array.new(ids.size, 10**9)
  sidx = idx[to_id(p)]
  d[sidx] = 0
  g.bfs(sidx) do |u, v|
    min_u(d[u], d[v]+1)
  end

  io.put(d[0] >= 10**9 ? -1 : d[0])
end

def to_id(s : Array(Int32)) : Int64
  r = 0_i64
  s.each do |si|
    r = r * 10 + si
  end
  r
end

def to_stat(id : Int64) : Array(Int32)
  r = [] of Int32
  N.times do
    r << (id % 10).to_i32
    id //= 10
  end
  r.reverse
end

require "procon"

require "procon/graph/graph"

solve(ProconIO.new)
