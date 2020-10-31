defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.map(fn x -> abs(x) end)
  end
end

IO.inspect(Solution.main())
