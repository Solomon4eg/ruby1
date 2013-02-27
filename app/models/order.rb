class Order < ActiveRecord::Base
  belongs_to :client
  has_many :tables ,:through =>  :rel_table_orders,:source =>  :table
  has_many :rel_table_orders

end
