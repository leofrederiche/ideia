class PagesController < ApplicationController
	def index
		@idea = Ideas.new
	end

	def about
		@idea = Ideas.new
	end

	def create
		@idea = Ideas.create(params.require(:ideas).permit(:title, :description, :idea, :contact, :link_project, :idealizer, :like, :nlike))
		@idea.employees = ""
		@idea.link_employees = ""
		@idea.like = 0
		@idea.nlike = 0
		@idea.save

		redirect_to show_path @idea
	end

	def top_idea
		@idea = Ideas.new
		@ideas = Ideas.all
	end

	def show
		@ideas = Ideas.new
		@idea = Ideas.find params[:id]
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
	end

	def update_nlike
		@idea = Ideas.find params[:id]
		@idea.nlike = @idea.nlike + 1
		@idea.save

		redirect_to top_idea_path
	end
end