class SakeCategory < ActiveRecord::Base
  belongs_to :sake
  belongs_to :category
end
