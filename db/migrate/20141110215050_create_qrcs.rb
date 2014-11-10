class CreateQrcs < ActiveRecord::Migration
  def change
    create_table :qrcs do |t|
      t.string :code

      t.timestamps
    end
  end
end
