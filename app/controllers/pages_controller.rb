class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:show, :create, :update_like, :update_nlike]

	def index

	end

	def about
		
	end

	def create
		@idea = Ideas.create(params.require(:ideas).permit(:title, :description, :idea, :contact, :link_project, :idealizer, :like, :nlike))
		@idea.employees = ""
		@idea.link_employees = ""
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
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def update
		@idea = Ideas.find params[:id]
		@backupName = @idea.employees
		@idea.update_attributes(params.require(:ideas).permit(:employees, :link_employees))
		@idea.employees = @backupName + @idea.employees + "(#{@idea.link_employees}), "
		@idea.save

		redirect_to show_path @idea
	end

	def update_like
		@idea = Ideas.find params[:id]
		@idea.like = @idea.like + 1
		@idea.save

		redirect_to top_idea_path
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end

	def update_nlike
		@idea = Ideas.find params[:id]
		@idea.nlike = @idea.nlike + 1
		@idea.save

		redirect_to top_idea_path
		if user_signed_in?
			@new_idea = Ideas.new
		end
	end
end