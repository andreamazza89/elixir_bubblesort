defmodule ElixirBubblesortTest do
  use ExUnit.Case

  describe "bubble sorting" do
    test "handles an empty list" do
      assert ElixirBubblesort.sort([]) === []
    end

    test "leaves an already ordered list as it is" do
      assert ElixirBubblesort.sort([1,2,5,111]) === [1,2,5,111]
    end

    test "sorts a two-nodes list" do
      assert ElixirBubblesort.sort([2,1]) === [1,2]
    end

    test "sorts a longer list with just one iteration required" do
      assert ElixirBubblesort.sort([1,2,4,3,6,5]) === [1,2,3,4,5,6]
    end

    test "sorts a longer list with two iterations required" do
      assert ElixirBubblesort.sort([1,2,4,5,3,6]) === [1,2,3,4,5,6]
    end

    test "equal numbers are supported" do
      assert ElixirBubblesort.sort([1,2,2,5,3,6]) === [1,2,2,3,5,6]
    end

    test "larger example with many iterations required" do
      assert ElixirBubblesort.sort([9,8,7,6,5,4,3,2,1]) === [1,2,3,4,5,6,7,8,9]
    end

    test "handles negative numbers correctly" do
      assert ElixirBubblesort.sort([5,0,-22,-3]) === [-22,-3,0,5]
    end
  end

end
