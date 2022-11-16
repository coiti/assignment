class User < ApplicationRecord
  include ActionText::Attachable

  has_many :comments,
    dependent: :destroy,
    foreign_key: "author_id",
    inverse_of: :author

  validates :email_address, :first_name, :last_name, presence: true

  has_person_name

  def self.name_starts_with(text)
    return none if text.blank?

    where <<~SQL.strip, text: text.downcase
      lower("users"."first_name") || ' ' || lower("users"."last_name") ^@ :text
    SQL
  end

  def to_attachable_partial_path
    "users/attachable"
  end

  def to_trix_content_attachment_partial_path
    "users/trix_content_attachment"
  end
end
