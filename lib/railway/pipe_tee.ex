defmodule TeeExample do
  use Rop
  def tagged_inc(v) do
    IO.puts "inc for #{v}" # sideeffect for demonstration
    {:ok, v + 1}
  end

  def calc(v) do
    v |> tee(tagged_inc) >>> tee(tagged_inc) >>> tee(tagged_inc)
  end
end
