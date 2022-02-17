# URL: https://yukicoder.me/problems/no/1705

def solve(io)
  n, m = io.get(Int64, Int32)
  a = io.get_a(m, Int64)

  b = [{0_i64, 0}] + a.map_with_index { |ai, i| {ai, i+1} }
  st = SegmentTree.new(b, :max, {0_i64, 0})

  q = io.get
  q.times do
    ti, xi, yi = io.get(Int32, Int32, Int64)
    case ti
    when 1
      c = st[xi]
      st[xi] = {c[0]+yi, c[1]}
    when 2
      c = st[xi]
      st[xi] = {c[0]-yi, c[1]}
    when 3
      c = st[0..-1]
      io.put c[1]
    end
  end
end

record Pair, v : Int32, a : Int64

require "procon"

require "procon/data_structure/segment_tree"

solve(ProconIO.new)
