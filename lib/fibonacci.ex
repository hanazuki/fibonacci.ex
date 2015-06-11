defmodule Fibonacci do
  @moduledoc """
  This is the Fibonacci module!
  """

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Fibonacci.Server, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Fibonacci.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
  Returns the next fibonacci number.

      iex> Fibonacci.next
      0
      iex> Fibonacci.next
      1
  """
  def next, do: Fibonacci.Server.next

  def crash!, do: Fibonacci.Server.crash!
end
