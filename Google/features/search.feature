Feature: Google searching
Background:
  Given We navigate to the google homepage
Scenario Outline:
  When We search for "<word>"
  And We click on the images link
  Then The results for the image search will be displayed
Examples:
|word|
|Zendaya|
|Donald Trump|
|Pam and Jim|