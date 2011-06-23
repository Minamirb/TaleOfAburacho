class Sake < ActiveRecord::Base
  has_many :feelings
  has_many :histories
  has_many :sake_categories
end
