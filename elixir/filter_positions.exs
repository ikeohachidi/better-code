defmodule Solution do
  def spit(_el, pos) when rem(pos, 2) == 0, do: nil
  def spit(el, pos) when rem(pos, 2) > 0 or rem(pos, 2) < 0, do: IO.puts(el)

  def run(n) do
  	for x <- 0..length(n) do
  		spit(Enum.at(n, x), x)
  	end
  end 

  def main() do
    IO.read(:stdio, :all)
    |> String.split
    |> Enum.map(&String.to_integer(&1))
    |> run 
  end
end

Solution.main()
