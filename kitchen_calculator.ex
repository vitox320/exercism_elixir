defmodule KitchenCalculator do
  @milliliter 1
  @cup 240
  @fluid_ounce 30
  @teaspon 5
  @tablespoon 15

  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter({:milliliter, value}) do
    {:milliliter, value * @milliliter}
  end

  def to_milliliter({:cup, value}) do
    {:milliliter, value * @cup}
  end

  def to_milliliter({:fluid_ounce, value}) do
    {:milliliter, value * @fluid_ounce}
  end

  def to_milliliter({:teaspoon, value}) do
    {:milliliter, value * @teaspon}
  end

  def to_milliliter({:tablespoon, value}) do
    {:milliliter, value * @tablespoon}
  end

  def from_milliliter({_, volume}, :cup) do
    {:cup, volume / @cup}
  end

  def from_milliliter({_, volume}, :fluid_ounce) do
    {:fluid_ounce, volume / @fluid_ounce}
  end

  def from_milliliter({_, volume}, :teaspoon) do
    {:teaspoon, volume / @teaspon}
  end

  def from_milliliter({_, volume}, :tablespoon) do
    {:tablespoon, volume / @tablespoon}
  end

  def from_milliliter({_, volume}, :milliliter) do
    {:milliliter, volume / @milliliter}
  end

  def convert(volume_pair, :cup) do
    volume_pair |> to_milliliter() |> from_milliliter(:cup)
  end

  def convert(volume_pair, :fluid_ounce) do
    volume_pair |> to_milliliter() |> from_milliliter(:fluid_ounce)
  end

  def convert(volume_pair, :teaspoon) do
    volume_pair |> to_milliliter() |> from_milliliter(:teaspoon)
  end

  def convert(volume_pair, :tablespoon) do
    volume_pair |> to_milliliter() |> from_milliliter(:tablespoon)
  end

  def convert(volume_pair, :milliliter) do
    volume_pair |> to_milliliter() |> from_milliliter(:milliliter)
  end
end
