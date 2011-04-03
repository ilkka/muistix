Given /^I have made lists$/ do
  @list1 = List.make!
  @list2 = List.make!
end

Then /^I should see my lists$/ do
  page.should have_content(@list1.description)
  page.should have_content(@list2.description)
end

When /^I select a list$/ do
  click_link @list1.description
end

Then /^I should see the things for that list$/ do
  @list1.things.each do |thing|
    page.should have_content(thing.description)
    page.should have_xpath("//a", :href => thing.uri)
  end
end

When /^I create a new list$/ do
  @my_new_list = List.make
  click_link 'New List'
  fill_in "Description", :with => @my_new_list.description
  [0,1,2].each do |idx|
    click_link 'Add thing'
    within :xpath, "//form/div/div[#{idx+1}]" do
      fill_in "Description", :with => @my_new_list.things[idx].description
      fill_in "URI", :with => @my_new_list.things[idx].uri
    end
  end
  click_button 'Save'
end

Then /^I should see the list$/ do
  page.should have_content @my_new_list.description
end

When /^I select the list$/ do
  click_link @my_new_list.description
end

Then /^I should see the things for the newly\-created list$/ do
  @my_new_list.things.each do |thing|
    page.should have_content thing.description
    page.should have_xpath "//a", :href => thing.uri
  end
end
