defmodule BirdCount do
  def today([]), do: nil
  def today([x | _xs]), do: x

  def increment_day_count([]), do: [1]
  def increment_day_count([x | xs]), do: [x + 1 | xs]

  def has_day_without_birds?(list), do: 0 in list

  def total([]), do: 0
  def total([x | xs]), do: x + total xs

  def busy_days([]), do: 0
  def busy_days([x | xs]) do
    cond do
      x >= 5 -> 1 + busy_days(xs)
      true -> busy_days(xs)
    end
  end
end
