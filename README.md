# Wordle Game in Pascal

A simple, command-line implementation of the Wordle game written in Pascal for a lab project in university.

## How to Play

The game selects a 5-letter word from a predefined list. You have 6 attempts to guess the word. After each guess, the game provides feedback using color:
- Green Background: The letter is correct and in the correct position.
- Yellow Background: The letter is correct but in the wrong position.
- No Background Color: The letter is not in the hidden word.


## Prerequisites
To compile and run this program, you will need a Pascal compiler that supports the `CRT` unit, such as Free Pascal (FPC).


## How to Use
- Clone this repository with
  
    ```git
    git clone https://github.com/HarHamz/Simple-Wordle-Pascal.git
    cd Simple-Wordle-Pascal
    ```
- Compile the Program
  
    Compile the `wordle.pas` file to run the program.


## Known Bugs and Flaws
- **Limited Word Bank**: The current word list is very small (only 5 words). This makes the game repetitive and limits replayability. The word list should be expanded for a proper Wordle experience.
- **Non-words are accepted**: There is no function to verify the user's input as a word. Any random combination of 5 letters will be accepted as a valid input.
- **Immediate Exit on Success**: After winning, the program calls break; and terminates quickly. In many standard console environments, this causes the final "You Win!" message to flash briefly before the window closes.
