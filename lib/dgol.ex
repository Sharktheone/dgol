defmodule Dgol do
  @moduledoc """
  Documentation for `Dgol`.
  """
  require Game

  @doc """
  Hello world.

  ## Examples

      iex> Dgol.hello()
      :world

  """
  def hello do

    Game.print_game(Game.get_initial_game())

    IO.puts("Hello, world!")
    :world
  end
end


Dgol.hello()
