defmodule LeetcodeChallenges.BegginersGuide.RunningSumOf1dArray do
  @moduledoc """
    Exercise: https://leetcode.com/problems/running-sum-of-1d-array/description/

    Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

    Return the running sum of nums.

    Example 1:

    Input: nums = [1,2,3,4]
    Output: [1,3,6,10]
    Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
    Example 2:

    Input: nums = [1,1,1,1,1]
    Output: [1,2,3,4,5]
    Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
    Example 3:

    Input: nums = [3,1,2,10,1]
    Output: [3,4,6,16,17]


    Constraints:

    1 <= nums.length <= 1000
    -10^6 <= nums[i] <= 10^6
  """

  @doc """
    1480. Running Sum of 1d Array

    ## Examples

        iex> RunningSumOf1dArray.call([1, 2, 3, 4])
        [1, 3, 6, 10]

        iex> RunningSumOf1dArray.call(1)
        {:error, "`nums` params must be a list"}

        iex> RunningSumOf1dArray.call(1)
        {:error, "`nums` params must be a list"}
  """
  def call(nums) when is_list(nums) do
    sum_helper(nums, 0, [])
  end

  def call(_nums), do: {:error, "`nums` params must be a list"}

  defp sum_helper([], _sum_number, acc), do: Enum.reverse(acc)

  defp sum_helper([head | tail], sum_number, acc) do
    new_sum = sum_number + head
    sum_helper(tail, new_sum, [new_sum | acc])
  end
end
