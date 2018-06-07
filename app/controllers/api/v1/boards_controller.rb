module Api
  module V1
	class BoardsController < ApplicationController
	  def index 
		articles = Board.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded boards', data:articles},status: :ok
	  end

	  def show 
	  	board = Board.find(params[:id])
	  	render json: {status: 'SUCCESS', message:'Loaded board', data:board},status: :ok
	  end
	end
  end
end