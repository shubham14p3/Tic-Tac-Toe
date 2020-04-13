require_relative 'player.rb'
require_relative 'board.rb'

class Match
  def initialize(players, user_interface)
    @players = players
    @current_player = players[0]
    @board = Board.new(user_interface)
    @user_interface = user_interface
  end

  private

  def user_move
    loop do
      move = @user_interface.ask_move(@current_player).to_i
      break if @board.apply_move?(@current_player.character, move)

      @user_interface.output_message('Invalid move, please try again')
    end
  end

  public

  def start
    match_finished = false
    @board.display
    until match_finished
      user_move
      @board.display
      case @board.board_completed(@current_player)
      when 1
        @user_interface.output_message("Congratulations player #{@current_player.id}, you won!")
        match_finished = true
        @current_player.score += 1
      when 2
        @user_interface.output_message('Match draw!')
        match_finished = true
      when 0
        @current_player = @current_player == @players[0] ? @players[1] : @players[0]
      end
    end
  end
end
