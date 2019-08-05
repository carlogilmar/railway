defmodule Publish do

  use Rop

  def publish_job(job_from_view) do
    job_from_view
    |> upload_img()
    >>> store_job(job_from_view)
  end

  def upload_img(job) do
    {:ok, "url"}
    #{:error, "error uploading an image"}
  end

  def store_job(_url, _job) do
    {:ok, "job created"}
    #{:error, "error creating a job"}
  end

end
