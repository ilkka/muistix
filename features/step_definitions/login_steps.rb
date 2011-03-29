# Step definitions for logging in

require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^I am not logged in$/ do
  visit destroy_user_session_path
end

Given /^a User with email "([^"]*)" with password "([^"]*)"$/ do |email, pass|
  User.make!(:email => email, :password => pass)
end

When /^I log in as "([^"]*)"\/"([^"]*)"$/ do |email, pass|
  click_link("login")
  fill_in("user_email", :with => email)
  fill_in("user_password", :with => pass)
  click_button("Sign in")
end

Then /^I should be logged in$/ do
  page.should have_xpath("//li/a", :text => /logout/)
end

