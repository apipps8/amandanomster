class Place < ApplicationRecord
	belongs_to :user, optional:true
	has_many :comments
	has_many :photos
	geocoded_by :address
  	after_validation :geocode
	validates :name, presence: true
end
