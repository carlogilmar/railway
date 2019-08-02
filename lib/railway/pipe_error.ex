defmodule PipeError do
  use Rop
  def tagged_inc(v) do
    IO.puts "inc for #{v}" # sideeffect for demonstration
    {:ok, v + 1}
  end

  def raising_fn(_) do
    raise "I'm raising!"
  end

  def result do
    1 |> tagged_inc >>> tagged_inc >>> tagged_inc
  end

  def raising_result_wrapped(v) do
    v |> tagged_inc >>> tagged_inc >>> try_catch(raising_fn) >>> tagged_inc
  end
end
