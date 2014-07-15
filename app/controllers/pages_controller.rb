class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:show, :create, :update_like, :update_nlike]

	def index

	end

	def about
		
	end

	def create
		@idea = Ideas.create(params.require(:ideas).permit(:title, :description, :idea, :contact, :link_project, :idealizer, :like, :nlike))
		@idea.like = 0
		@idea.nlike = 0
		@idea.save

		redirect_to show_path @idea
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def top_idea
		@ideas = Ideas.all
	end

	def show
		@ideas = Ideas.find params[:id]
		@user_collaborate = User.all
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def update
		@ideas = Ideas.find params[:id]
		if @user.collaborate == nil
			@user.collaborate = @ideas.id
			@user.save
			redirect_to show_path @ideas
		else
			redirect_to show_path @ideas
		end
	end

	def update_like
		@idea = Ideas.find params[:id]
		if @idea.like == nil
			@idea.like = 1
		else
			@idea.like = @idea.like + 1
			@idea.save
		end

		redirect_to top_idea_path
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def update_nlike
		@idea = Ideas.find params[:id]
		if @idea.nlike == nil
			@idea.nlike = 1
		else
			@idea.nlike = @idea.nlike + 1
			@idea.save
		end

		redirect_to top_idea_path
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end
end