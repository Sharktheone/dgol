defmodule Game do
  def get_initial_game() do
    [
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, true , true , true , false, false ],
      [ false, false, true , true , true , false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
    ]
  end


  def print_game(game) do
    Enum.each(game, fn row ->
      Enum.each(row, fn cell ->
        if cell do
          IO.write("X")
        else
          IO.write(".")
        end
      end)
      IO.puts("")
    end)
  end

  
end
