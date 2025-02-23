defmodule WineCellar do
  def explain_colors do
    [
      {:white, "Fermented without skin contact."},
      {:red, "Fermented with skin contact using dark-colored grapes."},
      {:rose, "Fermented with some skin contact, but not enough to qualify as a red wine."}
    ]
  end

  def filter(wines, color, opts \\ []) do
    wines = filter_by_color(wines, color)

    wines =
      if year = Keyword.get(opts, :year) do
        filter_by_year(wines, year)
      else
        wines
      end

    if country = Keyword.get(opts, :country) do
      filter_by_country(wines, country)
    else
      wines
    end
  end

  def filter_by_color([], _), do: []

  def filter_by_color([{color, info} | xs], color) do
    [info | filter_by_color(xs, color)]
  end

  def filter_by_color([{_color, _info} | xs], color) do
    filter_by_color(xs, color)
  end

  # The functions below do not need to be modified.

  defp filter_by_year(wines, year)
  defp filter_by_year([], _year), do: []

  defp filter_by_year([{_, year, _} = wine | tail], year) do
    [wine | filter_by_year(tail, year)]
  end

  defp filter_by_year([{_, _, _} | tail], year) do
    filter_by_year(tail, year)
  end

  defp filter_by_country(wines, country)
  defp filter_by_country([], _country), do: []

  defp filter_by_country([{_, _, country} = wine | tail], country) do
    [wine | filter_by_country(tail, country)]
  end

  defp filter_by_country([{_, _, _} | tail], country) do
    filter_by_country(tail, country)
  end
end
