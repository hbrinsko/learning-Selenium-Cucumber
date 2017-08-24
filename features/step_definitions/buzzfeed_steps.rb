require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds

Given(/^We navigate to the quiz page$/) do
  driver.navigate.to "https://www.buzzfeed.com/amandamaeh/pick-some-shows-to-binge-watch-and-well-tell-you-rles"
end

When(/^in the HBO question we choose "(.*?)"$/) do |word|
  answer = driver.find_element(:xpath => word)
  answer.click()
end

When(/^in the Netflix question we choose "([^"]*)"$/) do |word|
  answer = driver.find_element(:xpath => word)
  answer.click()
end

When(/^in the Hulu question we choose Rick$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[3]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Binge question we choose Parks$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[4]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Other question we choose 100$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[5]/div/div[1]/div[1]/div")
  answer.click()
end

Then(/^the quiz result is "([^"]*)"$/) do |word|
  quiz_results = driver.find_element(:css => "#mod-quiz-personality-1 > section > article:nth-child(#{word}) > header > span > i")
  #p quiz_results.text
    
end
