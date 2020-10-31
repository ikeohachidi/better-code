defmodule Solution do
  def spit([head | tail]) do
    filtered_array = []

    for n <- 0..length(tail) do
      filtered_array ++ run(head, Enum.at(tail, n))
    end
  end

  def run(head, n) when head < n or n == head do
  end

  def run(head, n) when head > n, do: IO.puts(n)

  def main() do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> spit
  end
end

# Solution.main()
IO.inspect(Solution.spit([4, 3, 2, 5, 6, 8, 9, 9, 3]))
