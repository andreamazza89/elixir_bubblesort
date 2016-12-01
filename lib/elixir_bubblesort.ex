defmodule ElixirBubblesort do

  def sort([a,b]) when a < b, do: [b, a]
  def sort([a,b]) when b < a, do: [b, a]
  def sort(list), do: list

end
