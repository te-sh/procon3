# URL: https://yukicoder.me/problems/no/1704

def solve(io)
  m0, m1, m3 = Mint.new(0), Mint.new(1), Mint.new(1)//Mint.new(3)

  m = Matrix.new(
    [
      [m3, m0, m0, m1, m0, m0],
      [m0, m3, m0, m0, m1, m0],
      [m0, m0, m3, m0, m0, m1],
      [m0, m3, m3, m0, m0, m0],
      [m3, m0, m3, m0, m0, m0],
      [m3, m3, m0, m0, m0, m0]
    ]
  )

  t = io.get
  t.times do
    n = io.get
    a = m ** n
    io.put a[0][0]
  end
end

require "procon"

require "procon/math/matrix"

require "procon/math/mod_int"
ModInt.new_type(Mint, 10**9+7)

solve(ProconIO.new)
