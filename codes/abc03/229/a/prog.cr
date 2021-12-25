# URL: https://atcoder.jp/contests/abc229/tasks/abc229_a

def solve(io)
  s1 = io.get(String)
  s2 = io.get(String)

  if {s1, s2} == {"#.", ".#"} || {s1, s2} == {".#", "#."}
    puts "No"
  else
    puts "Yes"
  end
end

require "procon"

solve(ProconIO.new)
