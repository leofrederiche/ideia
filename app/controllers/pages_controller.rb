class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:show, :create, :update_like, :update_nlike]

	def index

	end

	def new_idea

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
		@idea = Ideas.find params[:id]
		@user_collaborate = User.all
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def update
		@idea = Ideas.find params[:id]
		if @user.collaborate == nil
			@user.collaborate = @idea.id
			@user.save
			redirect_to show_path @idea
		else
			redirect_to show_path @ideas
		end
	end

	def delete
		@idea = Ideas.find params[:id]
		@idea.delete
		redirect_to user_ideas
	end

	def edit
		@idea = Ideas.find params[:id]
	end

	def update_idea
		@ideia = Ideas.find params[:id]
		@ideia.update_attributes(params.require(:ideas).permit(:title, :description, :idea, :contact, :link_project, :idealizer))

		redirect_to user_ideas_path
	end

	def update_like
		@idea = Ideas.find params[:id]

		if @user.liked == @idea.id
			redirect_to top_idea_path

		elsif @user.liked == nil
			@user.liked = @idea.id
			@user.save
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

		else
			@user.liked = @idea.id
			@user.save
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
	end

	def update_nlike
		@idea = Ideas.find params[:id]
		if @user.nliked == @idea.id
			redirect_to top_idea_path

		elsif @user.nliked == nil
			@user.nliked = @idea.id
			@user.save
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

		else
			@user.nliked = @idea.id
			@user.save
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
end