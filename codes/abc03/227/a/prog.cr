# URL: https://atcoder.jp/contests/abc227/tasks/abc227_a

def solve(io)
  n, k, a = io.get3

  k %= n
  k = n if k == 0

  if k > n-a+1
    io.put k-(n-a+1)
  else
    io.put a+k-1
  end
end

require "procon"

solve(ProconIO.new)
