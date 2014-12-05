class Event < ActiveRecord::Base
  has_many :locations
  has_many :participants
end