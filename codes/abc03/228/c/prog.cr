# URL: https://atcoder.jp/contests/abc228/tasks/abc228_c

def solve(io)
  n, k = io.get2
  p = io.get3_t(n)

  q = p.map(&.sum)
  r = q.sort.reverse

  q.each do |qi|
    i = r.rbsearch_index(&.> qi+300)
    rank = i.nil? ? 1 : i + 2
    io.put rank <= k ? "Yes" : "No"
  end
end

require "procon"

require "procon/rbsearch"

solve(ProconIO.new)
