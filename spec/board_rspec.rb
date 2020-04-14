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

end