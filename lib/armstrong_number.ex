defmodule ArmstrongNumber do
  @moduledoc """
  Provides a way to validate whether or not a number is an Armstrong number
  """
  @spec valid?(integer) :: boolean
  def valid?(number) do
    list = number |> Integer.digits()
    len = list |> length()

    number == list
    |> Enum.reduce(0, &(&2 + :math.pow(&1, len)))
  end
end
