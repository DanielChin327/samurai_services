class CreateSamurais < ActiveRecord::Migration[7.1]
  def change
    create_table :samurais do |t|
      t.string :name
      t.string :skill
      t.text :description
      t.integer :price_per_day
      t.integer :group_size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
