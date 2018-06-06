class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :side
      t.integer :m1id
      t.integer :m2id
      t.integer :m3id
      t.integer :m4id
      t.integer :m5id
      t.integer :st1id
      t.integer :st2id
      t.integer :st3id
      t.integer :st4id
      t.integer :st5id
      t.integer :deckid
      t.integer :graveyardid

      t.timestamps
    end
  end
end
