defmodule Solution do
  def run do
    num()
    |> Kernel.+(num())
    |> IO.puts()
  end

  def num do
    IO.gets("")
    |> Integer.parse()
    |> elem(0)
  end
end

Solution.run()
