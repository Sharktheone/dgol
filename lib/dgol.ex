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
    IO.puts("Initial game:")

    Enum.reduce(1..100, Game.get_initial_game(), fn _, game ->
      Terminal.clear_screen()
      Game.print_game(game)

      :timer.sleep(100)



      Game.next_generation(game)
    end)
  end
end

defmodule Terminal do
  def clear_screen do
    IO.write(IO.ANSI.clear())
  end
end

Dgol.hello()
