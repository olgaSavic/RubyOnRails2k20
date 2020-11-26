class ArticleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.new_article.subject
  #

  def new_article(user, article)
    @article = article
    mail to: user.email, subject: "New article '#{@article.title}' created"
  end
end
