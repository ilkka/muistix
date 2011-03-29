# Step definitions for logging in

require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^I am not logged in$/ do
  visit destroy_user_session_path
end

Given /^a User exists$/ do
  @user = User.make!
end

Given /^I am logged in$/ do
  Given %(I am not logged in)
  Given %(a User exists)
  When %(I log in as the user)
  Then %(I should be logged in)
end

When /^I log in as the user$/ do
  click_link("login")
  fill_in("user_email", :with => @user.email)
  fill_in("user_password", :with => @user.password)
  click_button("Sign in")
end

When /^I click on "([^"]*)"$/ do |link|
  click_link link
end

When /^I register$/ do
  user = User.make
  click_link "register"
  fill_in "user_email", :with => user.email
  fill_in "user_password", :with => user.password
  fill_in "user_password_confirmation", :with => user.password
  click_button "Sign up"
end

Then /^I should be logged in$/ do
  page.should have_xpath("//li/a", :text => /logout/)
end

Then /^I should not be logged in$/ do
  page.should have_xpath("//li/a", :text => /login/)
end

