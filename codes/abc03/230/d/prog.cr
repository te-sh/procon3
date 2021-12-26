# URL: https://atcoder.jp/contests/abc230/tasks/abc230_d

def solve(io)
  n, d = io.get2(Int32)
  w = records(Wall, io.get2_t(n, Int32))

  w.sort_by!(&.r)

  p = -d
  c = 0
  w.each do |wi|
    if wi.l >= p+d
      c += 1
      p = wi.r
    end
  end

  io.put c
end

record Wall, l : Int32, r : Int32

require "procon"

solve(ProconIO.new)
