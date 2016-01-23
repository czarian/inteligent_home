class RoomCategory < ActiveRecord::Base
	belongs_to :category
	belongs_to :room
	has_many :devices

	accepts_nested_attributes_for :devices
end
