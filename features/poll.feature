Feature: Poll
  In order to take part in a poll
  As a visitor to a partner website
  I want to vote and view the results
  
Scenario: Viewing a poll
  Given there is 1 poll
  When I go to the poll
  Then I see the question
  And I see the answer options