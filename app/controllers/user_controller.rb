class UserController < ApplicationController
	def perfil
		@user = User.find(current_user)
	end

	def user_ideas
		@user_ideas = Ideas.all
		@user = User.find(current_user)
	end

	def collaborate
		@user.collaborate = nil;
		@user.save

		redirect_to root_path
	end
end