class LoadUserController < ApplicationController
	respond_to :html, :xml, :json

	def index
	end

	def load_data
		id = params[:user_id]
		10.times { puts "" }		
		puts id
		10.times { puts ""}
	end
	
end