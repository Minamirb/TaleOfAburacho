class AddColumnToSake < ActiveRecord::Migration
  def change
    add_column :sakes, :comment, :string
  end
end
