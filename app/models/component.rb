class Component < ApplicationRecord
  belongs_to :supplier
  has_many :component_packages, dependent: :restrict_with_error
  has_many :packages, :through => :component_packages, dependent: :restrict_with_error
end
