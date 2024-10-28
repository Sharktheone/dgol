defmodule DgolTest do
  use ExUnit.Case
  doctest Dgol

  test "greets the world" do
    assert Dgol.hello() == :world
  end
end
