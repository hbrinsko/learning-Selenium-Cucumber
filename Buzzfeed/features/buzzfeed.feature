Feature: Buzzfeed Quiz
Scenario: Brave New World
  Given We navigate to the quiz page
  When in the HBO question we choose Thrones
  And in the Netflix question we choose
  And in the Hulu question we choose
  And in the Binge question we choose
  And in the Other question we choose
  Then the quiz result is a Brave New World
  
  