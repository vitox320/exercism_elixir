defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 && legacy? == false -> :trace
      level == 1 && (legacy? == true || legacy? == false) -> :debug
      level == 2 && (legacy? == true || legacy? == false) -> :info
      level == 3 && (legacy? == true || legacy? == false) -> :warning
      level == 4 && (legacy? == true || legacy? == false) -> :error
      level == 5 && legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) == :error || to_label(level, legacy?) == :fatal -> :ops
      to_label(level, legacy?) == :unknown && legacy? == true -> :dev1
      to_label(level, legacy?) == :unknown && legacy? == false -> :dev2
      true -> nil
    end
  end
end
