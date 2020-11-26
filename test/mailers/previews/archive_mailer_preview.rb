# Preview all emails at http://localhost:3000/rails/mailers/archive_mailer
class ArchiveMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/archive_mailer/new_archive
  def new_archive
    ArchiveMailer.new_archive
  end

end
