class CreateSakes < ActiveRecord::Migration
  def change
    create_table :sakes do |t|
      t.string :name
      t.string :company
      t.integer :price
      t.string :url
      t.string :recommend
      t.integer :category_id

      t.timestamps
    end
  end
end
