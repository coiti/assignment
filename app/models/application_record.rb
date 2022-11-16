class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :created_last_hour, -> { where created_at: (1.hour.ago..) }
end
