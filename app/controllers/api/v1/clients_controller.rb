module Api
  module V1
	class ClientsController < ApplicationController
	  def index 
		articles = Client.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded clients', data:articles},status: :ok
	  end

	  def show 
	  	client = Client.find(params[:id])
	  	render json: {status: 'SUCCESS', message:'Loaded client', data:client},status: :ok
	  end
	end
  end
end