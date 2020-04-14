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

 
end