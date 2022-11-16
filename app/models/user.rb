class User < ApplicationRecord
  has_many :comments,
    dependent: :destroy,
    foreign_key: "author_id",
    inverse_of: :author

  validates :email_address, :first_name, :last_name, presence: true

  has_person_name
end
