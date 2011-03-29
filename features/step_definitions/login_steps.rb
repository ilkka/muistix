# Step definitions for logging in

require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^a User with email "([^"]*)" with password "([^"]*)"$/ do |email, pass|
  User.make(:email => email, :password => pass)
end

When /^I log in as "([^"]*)"\/"([^"]*)"$/ do |email, pass|
  fill_in("email", :with => email)
  fill_in("password", :with => pass)
  click_button("login")
end

Then /^I should be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

