class Table < ActiveRecord::Base
  has_many :orders,:through =>  :rel_table_orders ,:source =>  "order_id"
  has_many :rel_table_orders
end
