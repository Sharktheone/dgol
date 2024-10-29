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

  def get_initial_game_alt() do
    [
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, true , true , true , false, false ],
      [ false, false, true , true , true , false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
      [ false, false, false, false, false, false, false, false ],
    ]
  end


  def get_cell(game, x, y) do
    Enum.at(Enum.at(game, x), y)
  end

  def get_neighbours(game, x, y) do
    for dx <- -1..1, dy <- -1..1, dx != 0 or dy != 0 do
    {x + dx, y + dy}
    end
    |> Enum.filter(fn {new_x, new_y} ->
      new_x >= 0 and new_y >= 0 and new_x < length(game) and new_y < length(hd(game))
    end)
    |> Enum.count(fn {new_x, new_y} ->
      get_cell(game, new_x, new_y)
    end)
    
    

  end

  def print_game(game) do
    Enum.each(game, fn row ->
      Enum.each(row, fn cell ->
        if cell do
          IO.write("⬛")
        else
          IO.write("⬜")
        end
      end)
      IO.puts("")
    end)
  end


  def print_neighbours(game) do
    Enum.each(0..length(game), fn x -> 
      Enum.each(0..length(hd(game)), fn y ->
        IO.write("#{get_neighbours(game, x, y)} ")
      end)
      IO.puts("")
    end)
  end

  
end
