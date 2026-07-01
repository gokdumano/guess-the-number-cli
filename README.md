# 🎮 Number Guessing Game

A modern, interactive Command Line Interface (CLI) game built entirely in Bash. Challenge your logic and intuition by guessing a randomly generated number between 1 and 100!

## ✨ Features

* **3 Difficulty Levels:** Choose your challenge: Easy (10 tries), Medium (5 tries), or Hard (3 tries).
* **Input Validation:** Robust error handling for non-numeric inputs or numbers out of the 1-100 range.
* **Seamless Replay:** Instantly start a new round after completing a game without restarting the script.
* **Graceful Termination:** Fully supports `Ctrl+C` to exit the game safely at any point with a clean goodbye message.

## 🚀 Quick Start

### Prerequisites
Any Unix-like environment supporting Bash (Linux, macOS, or Windows Subsystem for Linux - WSL).

### Installation & Execution

```bash
# 1. Clone this repository
git clone https://github.com/gokdumano/guess-the-number-cli.git

# 2. Navigate into the directory
cd guess-the-number-cli

# 3. Make the script executable
chmod +x guess-the-number.sh

# 4. Launch the game
./guess-the-number.sh
```

## 🕹️ Demo Preview

```text
Welcome to the Number Guessing Game!
I'm thinking of a number between 1 and 100.
Please select the difficulty level:
    1. Easy (10 chances)
    2. Medium (5 chances)
    3. Hard (3 chances)

Enter your choice: 2
Great! You have selected the Medium difficulty level.
You have 5 chances to guess the correct number.
Let's start the game!
Enter your guess: 50
Incorrect! The number is greater than 50.
```

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

https://roadmap.sh/projects/number-guessing-game
