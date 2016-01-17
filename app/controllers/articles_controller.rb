class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			# What happens when saved 
			redirect_to articles_show(@article)
		else
			# What happens when there are errors
		end
	end

	private
		def article_params
			params.require(:article).permit(:title, :description)
		end
end