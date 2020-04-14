require './lib/board'
require './lib/player'
require './bin/main'

describe Board do
  let(:my_player) do
    Player.new(1, 'X')
  end

  let(:my_ui) do
    UserInterface.new
  end

  let(:my_board) do
    Board.new(my_ui)
  end

  describe '#apply_move?' do
    it 'should apply the move to the specified position' do
      my_board.apply_move?(my_player.character, 1)
      expect(my_board.cells[0][0]).to eql('X')
    end

    it 'should return false if the position is already taken' do
      my_board.apply_move?(my_player.character, 1)
      expect(
        my_board.apply_move?(my_player.character, 1)
      ).not_to eql(true)
    end
  end

  describe '#board_completed' do
    it 'should return true when there is a win state on the board - top row' do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 2)
      my_board.apply_move?(my_player.character, 3)
      expect(
        my_board.board_completed(my_player)
      ).to eql(1)
    end

    it 'should return true when there is a win state on the board - main diagonal' do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 5)
      my_board.apply_move?(my_player.character, 9)
      expect(
        my_board.board_completed(my_player)
      ).to eql(1)
    end

    it 'should return 1 when there is a win state on the board - first column' do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 4)
      my_board.apply_move?(my_player.character, 7)
      expect(
        my_board.board_completed(my_player)
      ).to eql(1)
    end

    it 'should return 2 if there is a drawn match' do
      # Each line represents a move
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 2)
      my_board.apply_move?('O', 3)
      my_board.apply_move?('O', 4)
      my_board.apply_move?('O', 5)
      my_board.apply_move?(my_player.character, 6)
      my_board.apply_move?(my_player.character, 7)
      my_board.apply_move?(my_player.character, 8)
      my_board.apply_move?('O', 9)
      expect(
        my_board.board_completed(my_player)
      ).to eql(2)
    end
  end

  describe '#valid_move?' do
    it 'should return true if it is a valid move' do
      expect(my_board.valid_move?(1)).to eql(true)
    end

    it 'should return false if the move is out of boundaries' do
      expect(my_board.valid_move?(10)).not_to eql(true)
    end

    it 'should return false if the position is already taken' do
      my_board.apply_move?(my_player.character, 1)
      expect(my_board.apply_move?(my_player.character, 1)).not_to eql(true)
    end
  end
end
