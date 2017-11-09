class Room < ActiveRecord::Base
	belongs_to :pg
	has_many :beds, foreign_key: :room_number, primary_key: :room_number
end
