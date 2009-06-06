class Member < ActiveRecord::Base
  belongs_to :household
  
  validates_presence_of :first_name, :email, :household
  validates_uniqueness_of :email
end
