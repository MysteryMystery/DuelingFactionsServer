class CreateSpelltrapslots < ActiveRecord::Migration[5.2]
  def change
    create_table :spelltrapslots do |t|
      t.boolean :has_been_set_this_turn

      t.timestamps
    end
  end
end
