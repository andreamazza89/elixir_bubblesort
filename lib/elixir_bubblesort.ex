defmodule ElixirBubblesort do

  def sort([]), do: []

  def sort(list) do
    do_sort(list)
  end

  defp do_sort([a | [b | tail]]) when a > b do
    do_sort([b], [a] ++ tail, :repeat_required)
  end

  defp do_sort([a | [b | tail]]) when a <= b do
    do_sort([a], [b] ++ tail, :done)
  end

  defp do_sort(partial_list, [a | [b | tail]], repeat_status) when a > b do
    do_sort(partial_list ++ [b], [a] ++ tail, :repeat_required) 
  end

  defp do_sort(partial_list, [a | [b | tail]], repeat_status) when a <= b do
    do_sort(partial_list ++ [a], [b] ++ tail, repeat_status) 
  end

  defp do_sort(almost_full, last_node, :repeat_required) do
    sort(almost_full ++ last_node)
  end

  defp do_sort(almost_full, last_node, :done) do
    almost_full ++ last_node
  end

end
