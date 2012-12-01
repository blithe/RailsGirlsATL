class Attendee < ActiveRecord::Base
  attr_accessible :address, :bio, :name, :picture, :twitter_handle
  geocoded_by :address
  after_validation :geocode
end
