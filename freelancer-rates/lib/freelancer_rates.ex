defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount), do: (100 - discount) / 100 * before_discount

  def monthly_rate(hourly_rate, discount), do: ceil(apply_discount(22.0 * daily_rate(hourly_rate), discount))

  def days_in_budget(budget, hourly_rate, discount), do: Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
end
