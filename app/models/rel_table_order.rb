class RelTableOrder < ActiveRecord::Base
  belongs_to :table
  belongs_to :order
end
