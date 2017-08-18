require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds

Given(/^We navigate to the quiz page$/) do
  driver.navigate.to "https://www.buzzfeed.com/amandamaeh/pick-some-shows-to-binge-watch-and-well-tell-you-rles"
end

When(/^in the HBO question we choose Thrones$/) do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[1]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Netflix question we choose$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[2]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Hulu question we choose$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[3]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Binge question we choose$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[4]/div/div[1]/div[1]/div")
  answer.click()
end

When(/^in the Other question we choose$/)do
  answer = driver.find_element(:xpath => "//*[@id='mod-quiz-personality-1']/ol/li[5]/div/div[1]/div[1]/div")
  answer.click()
end

Then(/^the quiz result is a Brave New World$/)do
 wait.until {
    results = driver.find_elements(:xpath => "//*[@id='mod-quiz-personality-1']/section/article[2]/header/span/i")
    }
end
