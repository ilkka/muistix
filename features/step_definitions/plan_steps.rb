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
  counter = 0
  @my_new_plan.steps.each do |step|
    click_link 'Add step'
    fill_in "Objective #{counter}", :with => step.objective
    fill_in "URI #{counter}", :with => step.uri
    counter += 1
  end
  click_button 'Save'
end

Then /^I should see the plan$/ do
  page.should have_content @my_new_plan.description
end

When /^I select the plan$/ do
  click_link @my_new_plan.description
end

Then /^I should see the steps for the newly\-created plan$/ do
  @my_new_plan.steps.each do |step|
    page.should have_content step.objective
    page.should have_xpath "//a", :href => step.uri
  end
end
