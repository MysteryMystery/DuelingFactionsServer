module Api
  module V1
	class BoardsController < ApplicationController
	  def index 
		boards = Board.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded boards', data:boards},status: :ok
	  end

	  def show 
	  	board = Board.find(params[:id])
	  	render json: {status: 'SUCCESS', message:'Loaded board', data:board},status: :ok
	  end

	   def create 
	  	board = Board.new(board_params)

	  	if board.save
	  		render json: {status: 'SUCCESS', message:'Saved Board', data:board},status: :ok
	  	else 
	  		render json: {status: 'ERROR', message:'Board not saved', data:board.errors},status: :unprocessable_entity
	  	end
	  end

	  def destroy 
	  	board = Board.find(params[:id])
	  	board.destroy
	  	render json: {status: 'SUCCESS', message:'Destroyed board', data:board},status: :ok
	  end

	  def update 
	  	board = Board.find(params[:id])
	  	if board.update_attributes(board_params)
	  		render json: {status: 'SUCCESS', message:'Updated board', data:board},status: :ok
	  	else 
	  		render json: {status: 'ERROR', message:'Board not updated', data:board.errors},status: :unprocessable_entity
	  	end
	  end

	  private def board_params
	  	params.permit(:title, :body)
	  end
	end
  end
end