class Device < ActiveRecord::Base
  TYPES = ['switch']   #TYPES to jest stała która jest tablicą - jeden element
  self.inheritance_column = :dev_type
  belongs_to :room_category
  validates :name, presence: true
end
