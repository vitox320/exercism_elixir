defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minutes) when is_integer(minutes) and minutes > 0 do
    minutes_in_oven = expected_minutes_in_oven()
    minutes_in_oven - minutes
  end

  def preparation_time_in_minutes(layers) do
    2 * layers
  end

  def total_time_in_minutes(layers, minutes) do
    preparation_time = preparation_time_in_minutes(layers)
    preparation_time + minutes
  end

  def alarm do
    "Ding!"
  end
end
