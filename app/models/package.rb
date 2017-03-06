class Package < ApplicationRecord
  has_many :component_packages, dependent: :restrict_with_error
  has_many :components, :through => :component_packages, dependent: :restrict_with_error
end
