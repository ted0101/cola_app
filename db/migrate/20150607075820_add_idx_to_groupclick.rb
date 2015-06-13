class AddIdxToGroupclick < ActiveRecord::Migration
  def change
  	add_index :b01a2_groupclick,:Activity_Seq
  end
end
