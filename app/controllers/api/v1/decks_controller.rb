module Api
  module V1
	class DecksController < ApplicationController
	  def index 
		articles = Deck.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded Decks', data:articles},status: :ok
	  end
	end
  end
end