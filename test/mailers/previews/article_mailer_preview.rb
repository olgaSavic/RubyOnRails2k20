# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/article_mailer/new_article
  def new_article
  	article = Article.last
  	user = Author.last
    ArticleMailer.new_article(user, article)
  end

end
