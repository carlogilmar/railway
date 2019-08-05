defmodule App do
  use Rop

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "Esto no debió ocurrir!!"
  end

  def fun1(_params), do: {:ok, :fun1}
  def fun2(_params), do: {:ok, {:fun2, %{msg: "que onda"}}}
  def fun3(params) do
    IO.puts "fun 3 "
    IO.inspect params
    {:ok, :fun3}
  end

  def fun4(params) do
    IO.inspect params
    IO.puts "hiii"
  end

  def start() do
    "carlogilmar"
      |> fun1
      >>> fun2()
    #>>> error_fn
      >>> tee(fun4())
      >>> fun3()
  end

end
