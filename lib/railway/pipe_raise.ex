defmodule PipeRaise do
  use Rop
  def ok_result do
    {:ok, 1} |> ok
  end

  def error_result do
    {:error, %ArithmeticError{}} |> ok
  end

  def any_value_result do
    "bad value" |> ok
  end
end
