class UserMentionsNotificationJob < ApplicationJob
  queue_as :default

  def perform
    puts "begin perform"

    comments =
      Comment.includes(:author)
             .with_rich_text_content_and_embeds
             .created_last_hour
             .order(:created_at)

    comments.each do |comment|
      comment.mentioned_users.each do |user|
        UserMailer.with(user: user, comment: comment)
                  .comment_mention
                  .deliver_now
      end
    end
  end
end
