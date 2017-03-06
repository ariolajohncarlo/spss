class AddQuantityToComponentPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :component_packages, :quantity, :integer
  end
end
