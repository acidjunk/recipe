class CreateIngredientItems < ActiveRecord::Migration
  def change
    create_table :ingredient_items do |t|
      t.integer :quantity
      t.string :measure_unit
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
