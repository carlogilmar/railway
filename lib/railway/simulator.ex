defmodule Simulator do

  use Rop
  use Tracker

  def start() do
    job = %{ position: "dev", email: "carlo", id: 1, status: "created"}
    track(job)
    job
      |> bind(upload_img())
      >>> tee(track)
      >>> bind(store())
      >>> tee(track)
      >>> bind(email())
      >>> tee(track)
      >>> bind(pay())
      >>> tee(track)
  end

  def foo(job), do: :que_onda

  def upload_img(job), do: %{job | status: :uploaded}
  def store(job), do: %{job | status: :stored}
  def email(job), do: %{job | status: :email_sendes}
  def pay(job), do: %{job | status: :paid}

end
