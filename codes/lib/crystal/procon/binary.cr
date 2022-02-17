# :::::::::::::::::::: procon/binary
#
# 二項演算を行う Proc を生成します
#
module Binary(T)
  extend self

  def get(op : Symbol) : (T, T) -> T
    case op
    when :+   then return ->add(T, T)
    when :*   then return ->mul(T, T)
    when :min then return ->min(T, T)
    when :max then return ->max(T, T)
    end
    raise ArgumentError.new("not supported operator")
  end

  def add(a : T, b : T) : T
    if a.responds_to?(:+)
      r = a + b
      return r if r.is_a?(T)
    end
    raise NotImplementedError.new("this type does not support '+'")
  end

  def mul(a : T, b : T) : T
    if a.responds_to?(:*)
      r = a * b
      return r if r.is_a?(T)
    end
    raise NotImplementedError.new("this type does not support '*'")
  end

  def min(a : T, b : T) : T
    if a.responds_to?(:<=>)
      r = Math.min(a, b)
      return r if r.is_a?(T)
    end
    raise NotImplementedError.new("this type does not support 'min'")
  end

  def max(a : T, b : T) : T
    if a.responds_to?(:<=>)
      r = Math.max(a, b)
      return r if r.is_a?(T)
    end
    raise NotImplementedError.new("this type does not support 'max'")
  end
end
# ::::::::::::::::::::
