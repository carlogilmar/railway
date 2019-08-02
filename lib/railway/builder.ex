defmodule Builder do
  use Rop

  def error_fn(_) do
    {:error, "I'm a bad fn!"}
  end

  def raising_fn(_) do
    raise "Esto no debió ocurrir!!"
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
  end

  def prepare_pdf(email) do
    IO.puts "prepare pdf"
    email
  end

  def store_in_db(email) do
    IO.puts "store in db"
    email
  end

  def send_notify(email) do
    IO.puts "send notify"
    email
  end

end
