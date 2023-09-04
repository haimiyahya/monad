defmodule Maybe do
  def some(val) do
    {:some, val}
  end

  def none() do
    :none
  end

  def bind({:some, val}, fun) do
    fun.(val)
  end

  def bind(:none, _fun) do
    :none
  end

end
