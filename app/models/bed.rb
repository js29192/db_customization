class Bed < ActiveRecord::Base
	belongs_to :room, foreign_key: :room_number, primary_key: :room_number
	has_one :bed_type, foreign_key: :b_type, primary_key: :b_type
	delegate :pg, to: :room
end
