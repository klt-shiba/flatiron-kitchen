class CreateIngredients < ActiveRecord::Migration[5.0]
    def change
      create_table :ingredients do |t|
        t.string :name
        t.integer :recipe_ingredient_id

        t.timestamps null: false
      end
    end
  end
  