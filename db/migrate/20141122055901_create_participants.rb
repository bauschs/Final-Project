class CreateParticipants < ActiveRecord::Migration

  def change

    create_table :participants do |t|

      t.string :email

      t.references :event, index: true



      t.timestamps

    end

  end

end
