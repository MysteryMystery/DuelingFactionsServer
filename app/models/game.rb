class Game < ApplicationRecord
	has_many :boards
	has_many :clients
end
