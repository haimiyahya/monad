defmodule Result do
  def okay(val) do
    {:ok, val}
  end

  def fail() do
    :fail
  end

  def bind({:ok, val}, fun) do
    fun.(val)
  end

  def bind(:fail, _fun) do
    :fail
  end
end
