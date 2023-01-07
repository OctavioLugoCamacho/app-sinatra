Feature: Code Breaker Game
 
Guess the number in the game

  Scenario: Start a game
    Starting a game for guessing a number
    Then I navigate to "localhost:4567"
    Then I should see page title as "CodeBreaker Game"
    Then element having id "input" should be present
    Then element having id "guess" should be present
 
Scenario: Guess a number
Show the inital game, and try to guess 7519
Given I have entered 1094 for guess
When I press 'guess'
Then the result should be 'XX' on the screen