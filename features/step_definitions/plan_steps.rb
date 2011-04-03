Given /^I have made plans$/ do
  @plan1 = Plan.make!
  @plan2 = Plan.make!
end

Then /^I should see my plans$/ do
  page.should have_content(@plan1.description)
  page.should have_content(@plan2.description)
end

When /^I select a plan$/ do
  click_link @plan1.description
end

Then /^I should see the steps for that plan$/ do
  @plan1.steps.each do |step|
    page.should have_content(step.objective)
    page.should have_xpath("//a", :href => step.uri)
  end
end

When /^I create a new plan$/ do
  @my_new_plan = Plan.make
  click_link 'New Plan'
  fill_in "Description", :with => @my_new_plan.description
  click_link 'Add step'
  # only tests the first step for now, because I can't figure out how to fill the rest...
  fill_in "Objective", :with => @my_new_plan.steps.first.objective
  fill_in "URI", :with => @my_new_plan.steps.first.uri
  click_button 'Save'
end

Then /^I should see the plan$/ do
  page.should have_content @my_new_plan.description
end

When /^I select the plan$/ do
  click_link @my_new_plan.description
end

Then /^I should see the steps for the newly\-created plan$/ do
  page.should have_content @my_new_plan.steps.first.objective
  page.should have_xpath "//a", :href => @my_new_plan.steps.first.uri
end
