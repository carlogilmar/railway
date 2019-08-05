defmodule Tracker do
  defmacro __using__([]) do
    quote do
      def track(job) do
        IO.puts " ===> tracking job... #{job.status}"
      end
    end
  end
end
