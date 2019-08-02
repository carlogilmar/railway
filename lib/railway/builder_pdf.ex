defmodule BuilderPdf do

  def build(email_body) do
    body = "#{email_body} \n Pdf Status [built]"
    IO.puts "---"
    IO.puts body
    body
  end

  def build_again(pdf) do
    body = "#{pdf} \n Pdf Status [Rebuilt]"
    IO.puts "---"
    IO.puts body
    body
  end

end
