class Chore < ActiveRecord::Base
  belongs_to :household
  
  validates_uniqueness_of :name
  validates_presence_of :name, :duration, :active
  validates_numericality_of :duration
  validates_presence_of :household
end
