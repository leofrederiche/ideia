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

		@coments = Coments.all
		@coment = 0

		@votation = Votation.all
		@like = 0
		@unlike = 0
	end

	def show
		@idea = Ideas.find params[:id]
		@user_collaborate = User.all

		@new_coment = Coments.new
		@coments = Coments.all

		@votation = Votation.all
		@status_votation = false
		@like = 0
		@unlike = 0
		
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
		@votation = Votation.all
		@status_votation = false

		@votation.each do |v|
			if @idea.id == v.idea_id and @user.id == v.user_id
				v.like = true
				v.save

				@status_votation = true	
			end

		end

		if @status_votation == true
			redirect_to show_path(@idea)
		else
			@votation = Votation.create
			@votation.idea_id = @idea.id
			@votation.user_id = @user.id
			@votation.like = true
			@votation.save

			redirect_to show_path(@idea)
		end
	end

	def update_nlike
		@idea = Ideas.find params[:id]
		@votation = Votation.all
		@status_votation = false

		@votation.each do |v|
			if @idea.id == v.idea_id and @user.id == v.user_id
				v.like = false
				v.save

				@status_votation = true	
			end
		end

		if @status_votation == true
			redirect_to show_path(@idea)
		else
			@votation = Votation.create
			@votation.idea_id = @idea.id
			@votation.user_id = @user.id
			@votation.like = false
			@votation.save

			redirect_to show_path(@idea)
		end
	end

	def create_coment
		@idea = Ideas.find params[:id]
		@coment =  Coments.create(params.require(:coments).permit(:idea_id, :user_id, :description))
		@coment.idea_id = @idea.id
		@coment.user_id = @user.id
		@coment.save

		redirect_to show_path(@idea.id)
	end
end