defmodule Builder do

  def start(email) do
    email
    |> build_email()
    |> prepare_pdf()
    |> store_in_db()
    |> send_notify()
  end

  def build_email(email) do
    IO.puts "building email"
    email
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
