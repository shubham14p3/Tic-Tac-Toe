class Match
 
  end

  private

  def user_move
   
  end

  public

  def start
    match_finished = false
    @board.display
    until match_finished
      user_move
      @board.display
      case @board.board_completed(@current_player)
     
end