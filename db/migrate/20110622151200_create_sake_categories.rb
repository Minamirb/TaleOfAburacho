class CreateSakeCategories < ActiveRecord::Migration
  def change
    create_table :sake_categories do |t|
      t.integer :sake_id
      t.integer :category_id

      t.timestamps
    end
  end
end
