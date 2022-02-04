# URL: https://yukicoder.me/problems/no/1701

def solve(io)
  n, w = io.get2
  a = io.get_a(n)

  r = [] of Array(Bool)
  (1...3 ** n).each do |i|
    b = i.digits(3)
    b += [0] * (n - b.size)

    t = 0_i64
    a.zip(b) do |ai, bi|
      case bi
      when 1
        t += ai
      when 2
        t += ai//2
      end
    end

    if t == w
      r << b.map(&.> 0)
    end
  end

  io.put r.uniq.size
end

require "procon"

solve(ProconIO.new)
