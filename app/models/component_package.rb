class ComponentPackage < ApplicationRecord
	belongs_to :component
	belongs_to :package
end
