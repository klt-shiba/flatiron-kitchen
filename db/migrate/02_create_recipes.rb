class CreateRecipes < ActiveRecord::Migration[5.0]
    def change
      create_table :recipes do |t|
        t.string :name
        t.integer :recipe_ingredient_id

        t.timestamps null: false
      end
    end
  end
  