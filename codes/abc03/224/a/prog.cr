# URL: https://atcoder.jp/contests/abc224/tasks/abc224_a

def solve(io)
  s = io.get(String)
  if s[-1] == 'r'
    io.put("er")
  else
    io.put("ist")
  end
end

require "procon"

solve(ProconIO.new)
