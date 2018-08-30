Given("I am on the internet login page") do
  @browser.navigate.to "https://the-internet.herokuapp.com/login"
end

When(/^I input "([^"]*)" as my username$/) do |user|
  @browser.find_element(:id, "username").send_keys(user)
end

And(/^I input "([^"]*)" as my password$/) do |pass|
  @browser.find_element(:id, "password").send_keys(pass)
end

When("I click the login button") do
  @browser.find_element(:css, "button[type='submit']").click
end

Then("I should be on the Secure Area page") do
  flash_message = @browser.find_element(:id, "flash").text
  expect(flash_message).to include "You logged into a secure area!"
end

Then(/^I should see the following error message "([^"]*)"$/) do |error_message|
  flash_message = @browser.find_element(:id, "flash").text
  expect(flash_message).to include error_message
end