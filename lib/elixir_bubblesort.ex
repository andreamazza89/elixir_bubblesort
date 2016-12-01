defmodule ElixirBubblesort do

  def sort([]), do: []

  def sort(list) do
    do_sort([], list, :done)
  end

  
  defp do_sort(partial_list, _rest_of_list = [a | [b | tail]], repeat_status) 
  when a > b do
    do_sort((partial_list++[b]), ([a]++tail), :repeat_required) 
  end

  defp do_sort(partial_list, _rest_of_list = [a | [b | tail]], repeat_status) 
  when a <= b do
    do_sort((partial_list++[a]), ([b]++tail), repeat_status) 
  end


  defp do_sort(partially_sorted_list, last_node, :repeat_required) do
    sort(partially_sorted_list++last_node)
  end

  defp do_sort(sorted_list, last_node, :done) do
    sorted_list++last_node
  end

end
