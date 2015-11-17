class Place < ActiveRecord::Base
  self.per_page = 2

  belongs_to :user
  validates :name, :presence => true
end