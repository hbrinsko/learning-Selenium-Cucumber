require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Given(/^We navigate to the google$/) do
  driver.navigate.to "http://www.google.com/"
end

When(/^We search for the word Zendaya$/) do
  input = driver.find_element(:name, 'q')
  input.send_keys('Zendaya')
  input.send_keys(:enter)
end

Then(/^The results for the search will be displayed$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  wait.until { driver.find_element(:id => "main") }
end