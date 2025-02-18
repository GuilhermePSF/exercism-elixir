defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list) do
    [_ | xs] = list
    xs
  end

  def first(list) do
    [x | _] = list
    x
  end

  def count(list) do
    cond do
      list == [] ->
        0

      true ->
        [_ | xs] = list
        1 + count(xs)
    end
  end

  # def count([]), do: 0
  # def count([_ | xs]), do: 1 + count(xs)

  def functional_list?(list) do
    "Elixir" in list
  end
end
