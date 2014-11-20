class LoadUserController < ApplicationController
	respond_to :html, :xml, :json

	def index
	end

	def load_data
		id = params[:user_id]
		if id.to_i != 0
			@user = User.create(name: "Ghoul_1", password:"123123123", email: "ghoul1@seu.com", id_number: id)
			@user.add_role "Student"
		else
			@user = nil
		end
		@user
	end
	
end