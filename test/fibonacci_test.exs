defmodule FibonacciTest do
  use ExUnit.Case

  test "fibonacci" do
    assert Fibonacci.next == 0
    assert Fibonacci.next == 1
    assert Fibonacci.next == 1
    assert Fibonacci.next == 2
    assert Fibonacci.next == 3
    assert Fibonacci.next == 5
    assert Fibonacci.next == 8
  end
end
