defmodule Dictionary do
  @moduledoc """
  Dictionary reads in a file of words separated by
  newline (\n) characters and returns a single randomly
  selected word from the list.
  """

  def random_word() do
    word_list()
    |> Enum.random()
  end

  defp word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
