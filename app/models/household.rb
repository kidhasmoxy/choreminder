class Household < ActiveRecord::Base
  has_many :chores
  has_many :members


  validates_presence_of :name
end
