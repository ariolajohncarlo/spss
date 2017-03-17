class FixColumnNameComponentType < ActiveRecord::Migration[5.0]
  def change
    rename_column :components, :component_type, :component_type_id
  end
end
