class Category < ActiveRecord::Base
  has_many :sake_categories
  has_many :category_histories
end
