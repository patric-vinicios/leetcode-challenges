defmodule BegginersGuide.RunningSumOf1dArrayTest do
  use ExUnit.Case, async: true

  alias LeetcodeChallenges.BegginersGuide.RunningSumOf1dArray

  doctest RunningSumOf1dArray

  describe "call/1" do
    test "should return a list with the sum of 1d array" do
      assert [1, 3, 6, 10] == RunningSumOf1dArray.call([1, 2, 3, 4])
      assert [1, 2, 3, 4, 5] == RunningSumOf1dArray.call([1, 1, 1, 1, 1])
      assert [3, 4, 6, 16, 17] == RunningSumOf1dArray.call([3, 1, 2, 10, 1])
    end

    test "should return an error when it's not provided a list" do
      assert {:error, "`nums` params must be a list"} == RunningSumOf1dArray.call(1)
    end
  end
end
