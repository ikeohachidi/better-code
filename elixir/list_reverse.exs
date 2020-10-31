defmodule Solution do
  def spit(list) do
    for x <- 1..length(list) do
      Enum.at(list, length(list) - x)
    end
  end

  def main do
    IO.read(:stdio, :all)
    |> String.trim()
    |> String.split()
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> spit
  end
end
