class ArchiveMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.archive_mailer.new_archive.subject
  #
  def new_archive(user, article)
  	@article = article
    mail to: user.email, subject: "Article '#{@article.title}' archived"
  end
end
