class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.text :instructions
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
