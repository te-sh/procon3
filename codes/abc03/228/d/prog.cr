# URL: https://atcoder.jp/contests/abc228/tasks/abc228_d

def solve(io)
  n = 2 ** 20

  st = SegmentTree.new(Array.new(n, -1_i64), :min, Int64::MAX)

  q = io.get
  q.times do
    t, x = io.get(Int32, Int64)
    case t
    when 1
      j = (x%n...n).bsearch { |k| st[x%n..k] == -1 }
      if !j.nil?
        st[j] = x
        next
      end
      j = (0...x%n).bsearch { |k| st[0..k] == -1 }
      if !j.nil?
        st[j] = x
        next
      end
    when 2
      io.put st[x%n]
    end
  end
end

require "procon"

require "procon/data_structure/segment_tree"

solve(ProconIO.new)
