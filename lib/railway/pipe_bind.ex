defmodule PipeBind do
  use Rop
  def inc(v) do
    v + 1
  end

  def only_last_pipe_tagged_result(v) do
    v |> inc |> bind(inc)
  end

  def result_fully_tagged(v) do
    v |> bind(inc) >>> bind(inc) >>> bind(inc)
  end
end
