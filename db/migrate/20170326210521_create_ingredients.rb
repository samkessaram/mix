class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
