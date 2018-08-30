# Given("I am on the internet login page") do
#   visit(LoginPage)
# end
#
# When(/^I input "([^"]*)" as my username$/) do |user|
#   on(LoginPage).username = user
# end
#
# And(/^I input "([^"]*)" as my password$/) do |pass|
#   on(LoginPage).password = pass
# end
#
# When("I click the login button") do
#   on(LoginPage).submit
# end
#
# Then("I should be on the Secure Area page") do
#   flash_message = on(HomePage).flash
#   expect(flash_message).to include "You logged into a secure area!"
# end
#
# Then(/^I should see the following error message "([^"]*)"$/) do |error_message|
#   flash_message = on(LoginPage).flash
#   expect(flash_message).to include error_message
# end