defmodule Solution do
	def main(n) do
		IO.read(:stdio, :all)			
		|> String.split()
		|> Enum.map(fn x -> String.to_integer(x) end)
		|> Enum.reduce(0, fn _, acc -> acc + 1 end) 
	end	
end

IO.inspect(Solution.main())