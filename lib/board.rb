require_relative 'player.rb'

class Board
  attr_reader :cells

  def initialize(user_interface)
    @cells = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @user_interface = user_interface
  end

  private

  def check_win_rows?(player)
    symbol_check = player.character
    @cells.each do |row|
      return true if row.all?(symbol_check)
    end
    false
  end

  def check_win_columns?(player)
    symbol_check = player.character
    i = 0
    while i < @cells.length
      temp = []
      j = 0
      while j < @cells[i].length
        temp.push(@cells[j][i])
        j += 1
      end
      return true if temp.all?(symbol_check)

      i += 1
    end
    false
  end

  def check_win_reverse_diagonal?(player)
    rev_diagonal_arr = []
    symbol_check = player.character
    i = 0
    while i < @cells.length
      j = 0
      while j < @cells[i].length
        rev_diagonal_arr.push(@cells[i][j]) if j == @cells[i].length - i - 1
        j += 1
      end
      i += 1
    end
    return true if rev_diagonal_arr.all?(symbol_check)

    false
  end

  def check_win_main_diagonal?(player)
    diagonal_arr = []
    symbol_check = player.character
    i = 0
    while i < @cells.length
      j = 0
      while j < @cells[i].length
        diagonal_arr.push(@cells[i][j]) if i == j
        j += 1
      end
      i += 1
    end
    return true if diagonal_arr.all?(symbol_check)

    false
  end

  def board_full?
    @cells.each do |row|
      row.each do |element|
        return false if element.is_a?(Integer)
      end
    end
    true
  end

  public

  def board_completed(player)
    return 1 if check_win_rows?(player) || check_win_columns?(player)

    return 1 if check_win_main_diagonal?(player) || check_win_reverse_diagonal?(player)

    return 2 if board_full?

    0
  end

  def valid_move?(position)
    position.positive? && (position <= @cells.length**2) && position.is_a?(Integer)
  end

  def apply_move?(char, position)
    return false unless valid_move?(position)

    attemp_row = (position / @cells.length).floor
    attemp_row -= 1 if (position % @cells.length).zero?
    attemp_move = @cells[attemp_row][position % @cells.length - 1]
    if attemp_move.is_a?(Integer)
      @cells[attemp_row][position % @cells.length - 1] = char
      return true
    end
    false
  end

  def display
    @user_interface.display_board(@cells)
  end
end
