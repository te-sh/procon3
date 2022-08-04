# URL: https://atcoder.jp/contests/abc223/tasks/abc223_c

def solve(io)
  n = io.get
  c = io.get2_t(n)

  t = c.map { |a, b| a / b }.sum
  t /= 2

  d = 0
  c.each do |a, b|
    if a/b > t
      d += b*t
      break
    else
      d += a
      t -= a/b
    end
  end

  io.put d
end

require "procon"

solve(ProconIO.new)
