class AddVisitedLocationsToParticipants < ActiveRecord::Migration

  def change

    add_column :participants, :visited_locations, :text

  end

end
