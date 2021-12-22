# URL: https://atcoder.jp/contests/abc230/tasks/abc230_d

def solve(io)
  n, d = io.get2(Int32)
  l, r = io.get2_c(n, Int32)

  w = zip_record(Wall, l, r).sort_by(&.r)
  p = -d
  c = 0
  w.each do |wi|
    if wi.l >= p+d
      c += 1
      p = wi.r
    end
  end

  puts c
end

record Wall, l : Int32, r : Int32

require "procon"

solve(ProconIO.new)
