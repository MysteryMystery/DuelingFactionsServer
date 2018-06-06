module Api
  module V1
	class ClientsController < ApplicationController
	  def index 
		articles = Client.order('created_at DESC')
		render json: {status: 'SUCCESS', message:'Loaded articles', data:articles},status: :ok
	  end
	end
  end
end