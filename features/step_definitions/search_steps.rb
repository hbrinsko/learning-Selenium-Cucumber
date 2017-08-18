require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds

Given(/^We navigate to the google homepage$/) do
  driver.navigate.to "http://www.google.com/"
end

When(/^We search for "(.*?)"$/) do |word|
  input = driver.find_element(:name, 'q')
  input.send_keys(word)
  input.send_keys(:enter)
end

When(/^We click on the images link$/) do
  wait.until { driver.find_element(:id => "main") }
  imageLink = driver.find_element(:link_text => "Images")
  imageLink.click()
end

Then(/^The results for the image search will be displayed$/) do
  wait.until { driver.find_element(:id => "rcnt") }
end