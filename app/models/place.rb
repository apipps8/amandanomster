class Place < ApplicationRecord
	belongs_to :user, optional:true
	has_many :comments
	geocoded_by :address
  	after_validation :geocode
	validates :name, presence: true
end
