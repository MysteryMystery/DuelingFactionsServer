module Api
  module V1
	class BoardsController < ApplicationController
	  def index 
		articles = Board.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded articles', data:articles},status: :ok
	  end
	end
  end
end