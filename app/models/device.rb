class Device < ActiveRecord::Base
  TYPES = ['switch']
  self.inheritance_column = :dev_type
  belongs_to :room_category
  validates :name, presence: true
end
