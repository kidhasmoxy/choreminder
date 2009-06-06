Factory.define :household do |household|
  household.sequence(:name) { |n| "Household #{n}" }
end
