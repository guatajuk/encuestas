class LoadUserController < ApplicationController

	def index
	end

	def load_soap
		id = params[:user_id]
		10.times { puts "" }		
		puts id
		10.times { puts ""}
	end

end