class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  # Will_Paginate gem
  self.per_page = 2

  # Geocoder gem
  geocoded_by :address
  after_validation :geocode

  validates :name, :description, :address, :presence => true
  validates :name, length: { minimum: 3 }
end