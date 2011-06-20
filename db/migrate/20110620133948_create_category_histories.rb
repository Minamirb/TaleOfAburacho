class CreateCategoryHistories < ActiveRecord::Migration
  def change
    create_table :category_histories do |t|
      t.integer :category_id
      t.integer :member_id
      t.boolean :complete

      t.timestamps
    end
  end
end
