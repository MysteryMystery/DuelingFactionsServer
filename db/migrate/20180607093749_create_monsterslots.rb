class CreateMonsterslots < ActiveRecord::Migration[5.2]
  def change
    create_table :monsterslots do |t|
      t.boolean :has_changed_position
      t.boolean :has_attacked

      t.timestamps
    end
  end
end
