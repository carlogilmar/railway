defmodule App do
  use Rop

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "Esto no debió ocurrir!!"
  end

  def fun1(_params), do: {:ok, :fun1}
  def fun2(_params), do: {:ok, :fun2}
  def fun3(_params), do: {:ok, :fun3}

  def start() do
    "carlogilmar"
      |> fun1
      >>> fun2()
      >>> error_fn
      >>> fun3()
  end

end
