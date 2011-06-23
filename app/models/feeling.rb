class Feeling < ActiveRecord::Base
  belongs_to :sake
  belongs_to :member
end
