class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
