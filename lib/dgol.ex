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

    Terminal.clear_screen()

    Game.print_game(Game.get_initial_game())


    Enum.each(1..100, fn _ ->
      :timer.sleep(100)
      Terminal.clear_screen()
      Game.print_game(Game.get_initial_game_alt())
      :timer.sleep(100)
      Terminal.clear_screen()
      Game.print_game(Game.get_initial_game())
    end)
  end
end

defmodule Terminal do
  def clear_screen do
    IO.write(IO.ANSI.clear())
  end
end

Dgol.hello()
