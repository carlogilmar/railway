defmodule BuilderPdf do

  def build(email_body) do
    "this is the pdf body, and the email was #{email_body}"
  end

  def build_again(pdf) do
    "this is the pdf backup, with this content: #{pdf}"
  end

end
