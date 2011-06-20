class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :sake_id
      t.integer :member_id
      t.boolean :drunk
      t.boolean :next_order

      t.timestamps
    end
  end
end
