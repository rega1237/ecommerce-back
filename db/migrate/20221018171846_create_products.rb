class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.text :image
      t.float :price
      t.integer :quantity
      t.integer :bought_times

      t.timestamps
    end
  end
end
