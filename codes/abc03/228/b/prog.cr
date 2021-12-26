# URL: https://atcoder.jp/contests/abc228/tasks/abc228_b

def solve(io)
  n, x = io.get2; x -= 1
  a = io.get_a(n); a.map!(&.- 1)

  r, i = 0, x
  b = Array.new(n, false)
  while !b[i]
    b[i] = true
    i = a[i]
    r += 1
  end

  io.put r
end

require "procon"

solve(ProconIO.new)
