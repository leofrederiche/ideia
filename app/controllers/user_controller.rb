class UserController < ApplicationController
	def perfil
		@user = User.find(current_user)
	end

	def user_ideas
		@user_ideas = Ideas.all
	end
end