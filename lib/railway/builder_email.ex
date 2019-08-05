defmodule BuilderEmail do

  def build(email) do
    body = " Email to: #{email} \n "
    {:ok, body}
  end

end
