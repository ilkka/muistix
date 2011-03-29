# Step definitions for logging in
#
Given /^a User called "([^"]*)" with password "([^"]*)"$/ do |user, pass|
  User.make(:username => user, :password => pass)
end

When /^I log in as "([^"]*)"\/"([^"]*)"$/ do |user, pass|
  pending # express the regexp above with the code you wish you had
end

Then /^I should be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

