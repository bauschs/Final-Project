class CreateLocationsParticipants < ActiveRecord::Migration

  def change

    create_table :locations_participants, id: false do |t|

        t.belongs_to :location, index: true

        t.belongs_to :participant, index: true

    end

  end

end
