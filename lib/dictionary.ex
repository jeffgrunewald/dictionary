defmodule Dictionary do
  @moduledoc """
  Documentation for Dictionary.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello
      :world

  """
  def random_word() do
    Enum.random(word_list())
  end

  defp word_list do
    File.read!("assets/words.txt")
    |> String.split(~r/\n/)
  end
end
