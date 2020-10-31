defmodule Solution do
  def check_odd(num) when rem(num, 2) == 0, do: false
  def check_odd(num) when rem(num, 2) > 0 or rem(num, 2) < 0, do: true

  def main(n) do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.filter(fn x -> check_odd(x) end)
    |> Enum.reduce(fn x, acc -> x + acc end)
  end
end

IO.inspect(Solution.main())
