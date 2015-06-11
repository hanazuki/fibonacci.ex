defmodule Mix.Tasks.Fib do
  use Mix.Task

  @shortdoc "Print initial Fibonacci numbers"
  def run([num]) do
    Application.start(:fibonacci)
    num = String.to_integer(num)

    1..num
    |> Enum.map(fn _ -> Fibonacci.next end)
    |> Enum.each(&IO.puts/1)
  end
end
