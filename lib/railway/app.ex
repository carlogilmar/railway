defmodule Builder do
  use Rop

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "Esto no debió ocurrir!!"
  end

  def msg( state ) do
    IO.puts " Terminamos !!! "
    IO.puts "estado final: "
    validate_final_state.(state)
  end

  def validate_final_state do
    fn
      {:ok, _body} -> IO.puts " Ciclo terminado [DONE] "
      {:error, _body} -> IO.puts " Ciclo inconcluso [DONE] "
  end
  end

  def start(email) do
    email
    |> bind(BuilderEmail.build)
    >>> bind(BuilderPdf.build)
    #>>> (error_fn)
    >>> bind(BuilderPdf.build_again)
    >>> tee(BuilderNotify.notify)
    >>> bind(BuilderPdf.build_again)
    >>> try_catch(raising_fn)
    >>> bind(BuilderPdf.build_again)
    |> msg()
  end

end
