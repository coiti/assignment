# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def comment_mention
    UserMailer.with(user: User.first, comment: Comment.first).comment_mention
  end
end
