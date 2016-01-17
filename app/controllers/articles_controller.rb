class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			# What happens when saved 
			flash[:notice] = "Article was successfully created."
			redirect_to article_path(@article)
		else
			# What happens when there are errors
			render "new"
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	private
		def article_params
			params.require(:article).permit(:title, :description)
		end
end