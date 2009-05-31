Feature: Manage Chores
	In order to keep track of chores
	As a head of a household
	I want to create and manage chores
	
	Scenario: Chores List
		Given I have chores named Vacuuming, Dishes
		When I go to the list of chores
		Then I should see "Vacuuming"
		And I should see "Dishes"
	
	Scenario: Create Valid Chore
		Given I have no chores
		And I am on the list of chores
		When I follow "New Chore"
		And I fill in "Name" with "Dishes"
		And I fill in "Duration" with "15"
		And I fill in "Description" with "Empty the dishwasher if it has clean dishes, load it with dirty dishes, and start it."
		And I press "Create"
		Then I should see "Chore was successfully created."
		And I should see "Dishes"
		And I should see "15"
		And I should see "Empty the dishwasher if it has clean dishes, load it with dirty dishes, and start it."
		And I should have 1 chore
		