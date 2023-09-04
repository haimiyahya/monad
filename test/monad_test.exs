defmodule MonadTest do
  use ExUnit.Case
  doctest Monad

  @ori_val 10

  test "add 1 to a maybe some monad" do

    result = Maybe.some(@ori_val)
    |> Maybe.bind(fn x -> x + 1 end)

    assert result = {:some, @ori_val + 1}
  end

  test "add 1 to a maybe none monad" do

    result = Maybe.none()
    |> Maybe.bind(fn x -> x + 1 end)

    assert result = :none
  end

  test "add 1 to a result okay monad" do
    result = Result.okay(@ori_val)
      |> Result.bind(fn x -> x + 1 end)

    assert result == @ori_val + 1
  end

end
