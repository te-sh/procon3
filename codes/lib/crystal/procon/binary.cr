# :::::::::::::::::::: procon/binary
module Binary(T)
  extend self

  def procs
    {
      "+": ->add(T, T),
      "*": ->mul(T, T)
    }
  end

  def get(op : Symbol)
    procs[op]
  end

  def add(a : T, b : T)
    a + b
  end

  def mul(a : T, b : T)
    a * b
  end
end
