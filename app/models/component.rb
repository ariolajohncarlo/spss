class Component < ApplicationRecord
  belongs_to :supplier
  belongs_to :component_type
  has_many :component_packages, dependent: :restrict_with_error
  has_many :packages, :through => :component_packages, dependent: :restrict_with_error
 
  validates :component_id, presence: true, uniqueness: true 
  validates :component_description, presence: true
  validates :component_type_id, presence: true, numericality: { only_integer: true }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :retail_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :supplier_id, presence: true, numericality: { only_integer: true }
end
