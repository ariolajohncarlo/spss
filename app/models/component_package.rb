class ComponentPackage < ApplicationRecord
  belongs_to :package
  belongs_to :component
end
