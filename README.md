# Quizzler ❓

## Description
A simple Quiz App that gives the user a number of questions where they can answer 'True' or 'False' by pressing one of two buttons. During the quiz the result is shown as icons at the bottom: green checkmark for correct and red cross for incorrect.

At the end of the Quiz the total score is displayed with a button that gives the option to restart the quiz.

The inspriation for the app has been taken from the London Brewery App Turtorial: https://github.com/londonappbrewery/quizzler-flutter

## Main Parts
The App is divided into seven main files:
- main: Material Widget with the overall App structure
- quizpage: Central Widget area where the question, answer buttons and result icons are displayed
- question: Widget for displaying a stylized question text
- button: Widget for displaying buttons with some styling (color, shadow, rounded edges) and text
- answer: Widget for dsplaying the checkmark or cross Icon depending if answer was correct or not.
- scorekeeper: Widget for displaying a list of answer result Icons at the bottom of the screen. Continuously updated during the quiz.
- result: Widget for displaying the final result page and button for restarting the quiz.

## Aim
The Aim has been to create a modularized App, with the components separated into abstracted parts for easy readability and future development.
It is very easy to add questions by just adding to the map '_questionAnswers' in questionpage.dart.

