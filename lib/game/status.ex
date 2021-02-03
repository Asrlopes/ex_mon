defmodule ExMon.Game.Status do
  def print_round_message(%{status: :started} = info) do
    IO.puts("\n ====== The Game is started! ======\n")
    IO.inspect(info)
    IO.puts("---------------------------")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n ====== It's #{player} turn ======\n")
    IO.inspect(info)
    IO.puts("---------------------------")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n ====== The Game is over. ======\n")
    IO.inspect(info)
    IO.puts("---------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n ====== Ivalid move: #{move} ======\n")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts("\n ====== The Player Attacked the computer dealing #{damage} damage. ======\n")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("\n ====== The Computer Attacked the player dealing #{damage} damage. ======\n")
  end
end
