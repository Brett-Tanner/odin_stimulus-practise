class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :variation
      t.integer :top_speed
      t.integer :price
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
