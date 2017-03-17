class ChangeStringFormatInComponents < ActiveRecord::Migration[5.0]
  def change
    change_column(:components, :component_type_id, :integer)
  end
end
