defmodule HelloWorld do
  n =
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()

  Enum.each(1..n, fn _ -> IO.puts("Hello World") end)
end
