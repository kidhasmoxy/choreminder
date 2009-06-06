Factory.define :member do |member|
  member.first_name 'First Name'
  member.last_name 'Last Name'
  member.sequence(:email) { |n| "person_#{n}@example.com"}
  member.area_code '860'
  member.sequence(:mobile_number) { |n| 5000000 + n }
  member.manager 'false'
  member.association :household
end
