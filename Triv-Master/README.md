# Triv-Master!

The Triv-Master is a minimal and lightweight application allowing you to test your knowledge in a trivia quiz-style game.




## Motivation

During university, I participated in Quiz Bowl, and while I was not good enjoyed the competition very much. It's a great way to expand your horizons and gain general knowledge about various subjects and topics. Overall, the quiz bowl helped to reward and encourage learning while providing meaningful experiences with teamwork and preparation.

## Goal

The goal of the Triv-Master application is as follows:

1. Utilize the Model View Controller, MVC, app design pattern to create a fully functioning application.

2. Design a quiz-style interface where the users can select an answer and get instant feedback on whether their selection was correct or incorrect.

3. Utilize Swift functions with outputs and structures inside of the MVC design pattern.

4. Create multiple views and segue between the different opinions based on the user's final score and their selection.

## Getting Started

To get started, you will first need to clone this repository to a place of your choosing on your local device.

Once you have the project saved on your local device, upload the project to your IDE of choice for iOS development. Next will be to build and run the application.

## Usage

First, opening the application launches the user straight into the quiz game. In this primary view is where everything happens. At the top of the screen is a progress bar indicator, which indicates how much progress the user has made in the current quiz. The rest of the top half is where the questions are located. Below the question are four buttons, each holding a different title that corresponds to a different answer for each question. Lastly, in the bottom left corner is the user's current score. For each question the user gets correct, their score will increase by one.

Once the user has become familiar with the layout, they can begin by reading the question and the answers listed below. Once the user has selected a solution, their response will briefly highlight either green or red, and a chime will play based on whether they were correct or incorrect. Afterward, the question and answers will change to the index in the array.

Once the array has reached the end, based on the user's final score, the application will segue to a different view to indicate the quiz result.

Listed below are images of the application:
## Roadmap

There is still much to be done with this project, and it's far from completion. The following steps of the project I intend to implement are as follows:

1. Move three result views into one view that changes based on the final score 

2. Change the trophy image to reflect the user's final score

3. Add multiple quizzes that are selected at random for the user to take

4. Add a home page where the user can choose a specific type/subject quiz

5. Add functionality to no button to take the user to the home page
