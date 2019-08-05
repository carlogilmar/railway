defmodule App do
  use Rop

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "Esto no debió ocurrir!!"
  end

  def fun1(_params), do: :fun1
  def fun2(_params), do: :fun2
  def fun3(_params), do: :fun3

  def start() do
    "carlogilmar"
      |> bind(fun1)
      >>> bind(fun2())
      >>> (error_fn)
      >>> bind(fun3())
  end

end
