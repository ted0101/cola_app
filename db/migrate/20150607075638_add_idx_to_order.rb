class AddIdxToOrder < ActiveRecord::Migration
  def change
  	add_index :a05b00_order,:Order_No
  end
end
