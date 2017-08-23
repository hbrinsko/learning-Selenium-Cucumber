Feature: Buzzfeed Quiz
Scenario: Brave New World
  Given We navigate to the quiz page
  When in the HBO question we choose Thrones
  And in the Netflix question we choose Orange
  And in the Hulu question we choose Rick
  And in the Binge question we choose Parks
  And in the Other question we choose 100
  Then the quiz result is a Brave New World
  
Scenario: Hitchhiker
  Given We navigate to the quiz page
  When in the HBO question we choose BLL
  And in the Netflix question we choose Master
  And in the Hulu question we choose Rick
  And in the Binge question we choose West
  And in the Other question we choose Veep
  Then the quiz result is a Brave New World
  