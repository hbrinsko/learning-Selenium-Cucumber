Feature: Buzzfeed Quiz
Background:
  Given We navigate to the quiz page
Scenario Outline: Quiz completion
  When in the HBO question we choose "<HBO>"
  And in the Netflix question we choose "<Netflix>"
  And in the Hulu question we choose Rick
  And in the Binge question we choose Parks
  And in the Other question we choose 100
  Then the quiz result is "<Result>"
Examples:
|HBO|Netflix|Result|
|//*[@id='mod-quiz-personality-1']/ol/li[1]/div/div[1]/div[1]/div|//*[@id='mod-quiz-personality-1']/ol/li[2]/div/div[1]/div[1]/div|5|
|//*[@id="mod-quiz-personality-1"]/ol/li[1]/div/div[1]/div[2]/div|//*[@id='mod-quiz-personality-1']/ol/li[2]/div/div[1]/div[2]/div|9|

