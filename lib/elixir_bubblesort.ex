defmodule ElixirBubblesort do

  def sort([ a | [b | tail]]) when a > b  do
    [b, a] ++ sort(tail)
  end

  def sort([ a | [b | tail]]) when a < b  do
    [a, b] ++ sort(tail)
  end

  def sort(list), do: list

end
