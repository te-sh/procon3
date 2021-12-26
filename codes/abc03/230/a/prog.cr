# URL: https://atcoder.jp/contests/abc230/tasks/abc230_a

def solve(io)
  n = gets.not_nil!.chomp.to_i
  n += 1 if n >= 42
  io.put sprintf("AGC%03d", n)
end

require "procon"

solve(ProconIO.new)
