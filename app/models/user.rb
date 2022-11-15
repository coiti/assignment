class User < ApplicationRecord
  has_many :comments,
    dependent: :destroy,
    foreign_key: "author_id",
    inverse_of: :author

  has_person_name
end
