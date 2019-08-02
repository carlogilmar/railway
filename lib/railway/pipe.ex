defmodule NormalPipe do
  use Rop
  def tagged_inc(v) do
    IO.puts "inc for #{v}" # sideeffect for demonstration
    {:ok, v + 1}
  end

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "I'm raising!"
  end

  def result do
    1 |> tagged_inc >>> tagged_inc >>> tagged_inc
  end

  def error_result do
    1 |> tagged_inc >>> tagged_inc >>> error_fn >>> tagged_inc
  end

  def raising_result do
    1 |> tagged_inc >>> tagged_inc >>> raising_fn >>> tagged_inc
  end
end

