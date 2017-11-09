class BedType < ActiveRecord::Base
	belongs_to :bed, foreign_key: :b_type, primary_key: :b_type
end
