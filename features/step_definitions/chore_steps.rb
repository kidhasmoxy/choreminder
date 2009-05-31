
Given /^I have chores named (.+)$/ do |names|
  names.split(', ').each do |name|
    Factory.create(:chore, :name => name)
  end
end

Given /^I have no chores$/ do
  Chore.delete_all
end

Then /^I should have ([0-9]+) chore$/ do |count|
  Chore.count.should == count.to_i
end
