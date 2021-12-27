# :::::::::::::::::::: procon/binary
#
# 二項演算を行う Proc を生成します
#
module Binary(T)
  extend self

  def procs
    {
      "+": ->(a : T, b : T) { a + b },
      "*": ->(a : T, b : T) { a * b },
      min: ->(a : T, b : T) { Math.min(a, b) },
      max: ->(a : T, b : T) { Math.max(a, b) }
    }
  end

  def get(op : Symbol)
    procs[op]
  end
end
# ::::::::::::::::::::
