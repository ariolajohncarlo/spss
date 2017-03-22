class User < ApplicationRecord
  belongs_to :type
  
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true
  validates :type_id, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
end
