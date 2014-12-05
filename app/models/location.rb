class Location < ActiveRecord::Base
  belongs_to :event
  has_and_belongs_to_many :participants, :autosave => true
end