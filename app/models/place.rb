class Place < ActiveRecord::Base
  self.per_page = 2

  belongs_to :user
  validates :name, :description, :address, :presence => true
  validates :name, length: { minimum: 3 }
end