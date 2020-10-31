defmodule Solution do
	def main() do
		read = IO.read(:stdio, :line)		
		|> String.trim
		|> String.to_integer
		
		IO.inspect Enum.to_list(1..read), limit: :infinity
	end	
end

Solution.main()