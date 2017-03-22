class Package < ApplicationRecord
  has_many :component_packages, dependent: :restrict_with_error
  has_many :components, :through => :component_packages, dependent: :restrict_with_error
  
  validates :package_name, presence: true
  validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :kilowatthour_consumption, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
