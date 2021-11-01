class CreateMeasuredIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :measured_ingredients do |t|
      t.integer :amount
      t.belongs_to :dish, null: false, foreign_key: true
      t.belongs_to :ingredients, null: false, foreign_key: true
      t.belongs_to :measurements, null: false, foreign_key: true

      t.timestamps
    end
  end
end
