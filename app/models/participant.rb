class Participant < ActiveRecord::Base

  serialize :visited_locations, Array

  belongs_to :event

  has_and_belongs_to_many :locations, :autosave => true

end
