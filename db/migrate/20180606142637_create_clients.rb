class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :ip
      t.text :deckids

      t.timestamps
    end
  end
end
