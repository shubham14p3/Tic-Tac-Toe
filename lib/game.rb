require_relative 'player.rb'
require_relative 'board.rb'
require_relative 'match.rb'

class Game
  def initialize(user_interface)
    @game_on = false
    @user_interface = user_interface
  end

  def start
    @user_interface.output_message 'Welcome to Tic-Tac-Toe!'
    @players = []
    player1_name = @user_interface.ask_name(1)
    @players[0] = Player.new(player1_name, 'X')
    player2_name = @user_interface.ask_name(2)
    @players[1] = Player.new(player2_name, 'O')
    @game_on = true

    while @game_on
      match = Match.new(@players, @user_interface)
      match.start
      @user_interface.display_score(@players)
      @game_on = @user_interface.repeat_match
    end

    @user_interface.output_message 'Game over. Thank you for playing Tic-Tac-Toe!'
  end
end
