defmodule FreelancerRates do
  @daily_rate 8
  @bilable_days 22

  def converting_integer_numbers_to_float(number) do
    number / 1
  end

  def daily_rate(hourly_rate) do
    (hourly_rate * @daily_rate) |> converting_integer_numbers_to_float()
  end

  def apply_discount(price, discount) do
    price - price * (discount / 100)
  end

  def monthly_rate(daily_rate) do
    daily_rate * @bilable_days
  end

  def discover_daily_rate_by_budget(hourly_rate, budget) do
    budget / hourly_rate
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate)
    |> monthly_rate()
    |> apply_discount(discount)
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate(hourly_rate)
    |> apply_discount(discount)
    |> discover_daily_rate_by_budget(budget)
    |> Float.floor(1)
  end
end
