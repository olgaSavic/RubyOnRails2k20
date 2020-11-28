class ArticlesController < ApplicationController
	before_action :require_login, except: [:index, :show, :archive]
	def index
  		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.author = current_user
  		@article.save
  		ArticleMailer.new_article(current_user, @article).deliver_later
  		flash.notice = "Article '#{@article.title}' Created!"
  		redirect_to article_path(@article)
	end

	def article_params
    	params.require(:article).permit(:title, :body, :tag_list, :image)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash.notice = "Article '#{@article.title}' Deleted!"
		redirect_to '/articles'
	end

	def edit
  		@article = Article.find(params[:id])
	end

	def update
  		@article = Article.find(params[:id])
  		@article.update(article_params)
  		flash.notice = "Article '#{@article.title}' Updated!"
  		redirect_to article_path(@article)
	end

	def archive
		@article = Article.find(params[:id])
		@article.archive
		ArchiveMailer.new_archive(@article.author, @article).deliver_later
		redirect_to article_path(@article)
	end

end
