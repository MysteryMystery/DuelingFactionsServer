class CreateGraveyards < ActiveRecord::Migration[5.2]
  def change
    create_table :graveyards do |t|
      t.text :cardids

      t.timestamps
    end
  end
end
