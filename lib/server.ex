defmodule Fibonacci.Server do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, {0, 1}, name: Fibonacci.Server)
  end

  def crash! do
    GenServer.cast(Fibonacci.Server, :crash)
  end

  def handle_cast(:crash, _) do
    raise RuntimeError, message: "Oops!"
  end

  def next do
    GenServer.call(Fibonacci.Server, :next)
  end

  def handle_call(:next, _, {a, b}) do
    {:reply, a, {b, a + b}}
  end
end
