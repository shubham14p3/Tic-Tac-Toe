# Tic-Tac-Toe-on-Ruby

Tic-Tac-Toe is an fun game to play. This game is made on ruby an OOP program. The tic-tac-toe game is created to play on the command line where two human players can play against each other and the board is displayed in between turns 

# Rules

1. The game is played on a grid that's 3 squares by 3 squares.

2. You are X, your friend (or the computer in this case) is O. Players take turns putting their marks in empty squares.

3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.

4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.

Top-Left		 Top-Center		 Top-Right
Middle-Left		 Middle-Center	 Middle-Right
Bottom-Left		 Bottom-Center	 Bottom-Right
					
# How to play

When you start the game, it's going to ask the names of the players, and immediately after, a match will start. 
You can play as many matches as you want in a single game, and the game is going to keep track of the score.

## Making a move
Each cell in the board is represented by a number, as shown in the figure below. To make a move, you just enter the number of the cell you want to place your token on.

    |1|2|3|
    |4|5|6|
    |7|8|9|

You can't choose a cell that's not displayed in the figure, that will result in the game displaying a warning and asking you for a proper move.

## Ending the game
If you want to stop playing, just enter 'n' when asked if you want to keep playing at the end of the match.

# How to run the game
First of all, you need to have the game files in your computer. You can get them either cloning this repository, or downloading its contents directly
- To clone the repo, go on the project's [Github page](https://github.com/shubham14p3/Tic-Tac-Toe.git), click on "Clone or download", copy the contents of the text box, and then run `git clone "repo"` on the command line, where "repo" is the text you just copied.
- If you want to download it directly instead, go on the project's [Github page](https://github.com/shubham14p3/Tic-Tac-Toe), click on "Clone or download", and then on "Download ZIP". After this you need to extract the contents of the zip file on your computer.

Once you have the files on your computer, go on the command line and navigate to the game directory. Once there, there's two ways to run the game

- Run the game directly from the executable file, using the command `./bin/main.rb`
- Pass the main.rb file to the ruby interpreter, using the command `ruby bin/main.rb`

# Live version

[Link to the live version](https://shubham14p3.github.io/Tic-Tac-Toe/.)

# Requirements

- Ruby > 2.7

## Built With

- Ruby
- VSCode

## Author

👤 Miguel Enciso

- Github: [@MiguelEnciso](http://github.com/rootDEV2990/)
- Linkedin: [Miguel Enciso](https://www.linkedin.com/mx/rootDEV2990/)

👤 Shubham Raj

- Github: [@ShubhamRaj](https://github.com/shubham14p3)
- Linkedin: [Shubham14p3](https://www.linkedin.com/in/shubham14p3/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/shubham14p3/Tic-Tac-Toe/issues/).

## Show your support

Give a ⭐️ if you like this project!
