# :::::::::::::::::::: procon/io/io
#
# 競技プログラミング用の読み書きを行います.
#
class ProconIO
  #
  # コンストラクタ
  #
  def initialize(@ins : IO = STDIN, @outs : IO = STDOUT)
    @buf = IO::Memory.new("")
  end

  #
  # 型を指定して値を読み込みます
  #
  def get(k : T.class = Int32) forall T
    get_v(k)
  end

  #
  # 型を指定して複数の値を読み込みます
  #
  macro define_get
    {% for i in (2..9) %}
      def get({{ *(1..i).map { |j| "k#{j}".id } }})
        { {{ *(1..i).map { |j| "get(k#{j})".id } }} }
      end
    {% end %}
  end
  define_get

  #
  # 個数と型を指定して複数の値を読み込みます
  #
  macro define_getn
    {% for i in (2..9) %}
      def get{{i}}(k : T.class = Int32) forall T
        get({{ *(1..i).map { "k".id } }})
      end
    {% end %}
  end
  define_getn

  #
  # 型を指定して横に並んだ配列の値を読み込みます
  #
  def get_a(n : Int, k : T.class = Int32) forall T
    Array.new(n) { get_v(k) }
  end

  #
  # 型を指定して縦に並んだ配列の値を読み込みます
  #
  def get_c(n : Int, k : T.class = Int32) forall T
    get_a(n, k)
  end

  #
  # 型を指定して縦に並んだ配列の複数の値を読み込みます
  #
  macro define_get_c
    {% for i in (2..9) %}
      def get_c(n : Int, {{ *(1..i).map { |j| "k#{j}".id } }})
        a = Array.new(n) { get({{ *(1..i).map { |j| "k#{j}".id } }}) }
        { {{ *(1..i).map { |j| "a.map { |e| e[#{j-1}] }".id } }} }
      end
    {% end %}
  end
  define_get_c

  #
  # 個数と型を指定して縦に並んだ配列の複数の値を読み込みます
  #
  macro define_getn_c
    {% for i in (2..9) %}
      def get{{i}}_c(n : Int, k : T.class = Int32) forall T
        get_c(n, {{ *(1..i).map { "k".id } }})
      end
    {% end %}
  end
  define_getn_c

  # ---------- private methods

  private def get_v(k : String.class); get_token; end
  private def get_v(k : Int32.class); get_token.to_i32; end
  private def get_v(k : Int64.class); get_token.to_i64; end

  private def get_token
    loop do
      token = @buf.gets(' ', chomp: true)
      break token unless token.nil?
      @buf = IO::Memory.new(@ins.read_line)
    end
  end
end
# ::::::::::::::::::::
