Given /^I have made plans$/ do
  @plan1 = Plan.make!
  @plan2 = Plan.make!
end

Then /^I should see my plans$/ do
  page.should have_content(@plan1.description)
  page.should have_content(@plan2.description)
end
