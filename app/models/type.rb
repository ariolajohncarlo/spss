class Type < ApplicationRecord
  has_many :users, dependent: :restrict_with_error
  
  validates :user_type, presence: true
  validates :user_description, presence: true
end
