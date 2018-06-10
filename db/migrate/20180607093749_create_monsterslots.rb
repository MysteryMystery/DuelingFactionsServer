class CreateMosterslots < ActiveRecord::Migration[5.2]
  def change
    create_table :mosterslots do |t|
      t.boolean :has_changed_position
      t.boolean :has_attacked

      t.timestamps
    end
  end
end
