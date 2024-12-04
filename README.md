# Quiz Time - Flutter Quiz App

**Quiz Time** is a dynamic and interactive quiz app developed using Flutter. Users can answer multiple-choice questions (MCQs) and receive a detailed summary of their performance, including chosen answers, correct answers, and the total score.

## Features

- **Clean and Interactive Interface**: Simple and visually appealing UI.
- **Dynamic Question Flow**: Questions are displayed one at a time, with options shuffled.
- **Result Summary**:
  - Displays chosen answers vs. correct answers.
  - Shows the total score and percentage.
- **Restart Quiz Functionality**: Allows users to restart the quiz with a single click.

## Project Structure

### Key Files

- **`main.dart`**: Entry point for the application.
- **`home.dart`**: Home screen displaying the "Start Quiz" button.
- **`questionsPage.dart`**: Manages the display of quiz questions and answers.
- **`resultScreen.dart`**: Displays the summary of results and score after the quiz ends.
- **`questions.dart`**: Defines the quiz data model.

### Code Highlights

- **State Management**: The quiz flow is managed using `setState` within the `Quiz` widget.
- **Dynamic UI**: Questions and their options are dynamically generated.
- **Reusable Components**: Modular design using widgets like `AnswerButton` and `SummaryDetails`.

## Installation & Usage

### Prerequisites
- Flutter SDK installed.
- A working development environment (e.g., VSCode, Android Studio).

