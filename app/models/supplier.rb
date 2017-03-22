class Supplier < ApplicationRecord
  has_many :components, dependent: :restrict_with_error
  
  validates :company_code, presence: true, uniqueness: true
  validates :company_name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
end
