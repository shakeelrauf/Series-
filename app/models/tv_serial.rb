class TvSerial < ApplicationRecord
	validates_uniqueness_of :name
	has_many :serie_data
	has_many :reviews
end
