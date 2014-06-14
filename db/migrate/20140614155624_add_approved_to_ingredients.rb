class AddApprovedToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :approved, :boolean, default: false
  end
end
