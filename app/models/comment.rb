class Comment < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_rich_text :content

  delegate :email_address, :name, to: :author, prefix: true
  delegate :body, to: :content, private: true
  delegate :attachments, to: :body, private: true

  def mentioned_users
    attachments.map(&:attachable).uniq.filter do |attachable|
      attachable.is_a?(User) && attachable.id != author_id
    end
  end
end
