class ChangeColumnToSake < ActiveRecord::Migration
  def change
    remove_column :sakes, :company
    remove_column :sakes, :category_id
    remove_column :sakes, :url

    add_column :sakes, :url_large, :string
    add_column :sakes, :url_small, :string
  end
end
