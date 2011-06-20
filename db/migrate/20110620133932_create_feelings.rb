class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.integer :sake_id
      t.integer :member_id
      t.string :memo
      t.string :doux_brut
      t.string :bitter
      t.string :rough
      t.string :hard_right
      t.string :umami

      t.timestamps
    end
  end
end
