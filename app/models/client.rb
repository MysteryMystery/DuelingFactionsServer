class Client < ApplicationRecord
	belongs_to :board
	has_many :decks
	serialize :deckids
end
