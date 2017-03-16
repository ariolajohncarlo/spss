class CreateComponentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :component_types do |t|
      t.string :type_description

      t.timestamps
    end
  end
end
