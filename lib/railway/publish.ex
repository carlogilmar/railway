defmodule Publish do

  use Rop

  def publish_job(job_from_view) do
    job_from_view
    |> upload_img()
    >>> pay_job()
    >>> bind(store_job(job_from_view))
    >>> bind(try_catch(send_email()))
  end

  def send_email(_) do
    #raise ArgumentError, message: "the argument value is invalid"
    :email_ok
  end

  def upload_img(job) do
    {:ok, "url"}
    #{:error, "error uploading an image"}
  end

  def store_job(_url, _job) do
    #{:ok, "job created"}
    "okas"
    #{:error, "error creating a job"}
  end

  def pay_job(_job) do
    {:ok, "error creating a job"}
  end

end
