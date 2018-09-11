#/lib/ex_hasher/random
defmodule ExHasher.Random do
  @moduledoc """
  Documentation for ExHasher Random.
  """


  @doc ~S"""
  The mean is the sum of all values over the number of values.

  ## Examples

      iex> ExHasher.Random.hash()
      nil
      # iex> ExHasher.Random.hash(23)
      # url safe hash, 23 char long
  """

   @spec hash(integer) :: string()

   def hash(), do: nil

   def hash(length) do
    length
    |> :crypto.strong_rand_bytes()
    |> Base.url_encode64()
    |> binary_part(0, length)
  end
end
