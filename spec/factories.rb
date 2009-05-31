Factory.define :chore do |f|
  f.sequence(:name) {|n| "chore_#{n}"} 
  f.duration 15
  f.description "This is a chore description, although it is extremely short."
end

Factory.define :person do |f|
  f.first_name "Bob"
  f.last_name  "Cob"
  f.sequence(:email) { |n| "person_#{n}@example.com"}
end