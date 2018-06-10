class Board < ApplicationRecord
	belongs_to :game

	has_one :client
	has_one :deck 
	has_one :graveyard 

	has_many :monsterslots 
	has_many :spelltrapslots
end
