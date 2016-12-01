defmodule ElixirBubblesortTest do
  use ExUnit.Case

  test "handles an empty list" do
    assert ElixirBubblesort.sort([]) === []
  end

  test "leaves an already ordered list as it is" do
    assert ElixirBubblesort.sort([1,2,5,111]) === [1,2,5,111]
  end

  test "sorts a two-nodes list" do
    assert ElixirBubblesort.sort([1,2]) === [2,1]
  end
end
