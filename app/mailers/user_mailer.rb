class UserMailer < ApplicationMailer
  def comment_mention
    @user = params[:user]
    @comment = params[:comment]

    mail to: email_address_with_name(@user.email_address, @user.name),
         subject: "You were mentioned in a comment by #{@comment.author_name}"
  end
end
