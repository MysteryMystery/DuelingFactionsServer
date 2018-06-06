class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :board1
      t.integer :board2

      t.timestamps
    end
  end
end
