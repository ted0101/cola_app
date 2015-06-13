class Groupclick < ActiveRecord::Base
    self.table_name = "b01a2_groupclick"

    def self.data_count2
    query = <<-SQL
    select groups.Tour_Type,count(groupclick.Activity_Seq) as tour_count from
    (select * from b01a2_groupclick limit 50000) as groupclick
    inner join a03a3_group  as groups on groupclick.Tour_Code =groups.Tour_Code group by groups.Tour_Type;
    SQL

    data=Groupclick.find_by_sql(query)
    data.map{|d| {name:d.Tour_Type.strip,count:d.tour_count}}
	end	

    def self.data_count1
    query = <<-SQL
    select groups.Tour_Type,count(groupclick.Activity_Seq) as tour_count from
    (select * from b01a2_groupclick limit 50000) as groupclick
    inner join a03a3_group  as groups on groupclick.Tour_Code =groups.Tour_Code group by groups.Tour_Type;
    SQL

    data=Groupclick.find_by_sql(query)
    data.map{|d| d.tour_count}
    end

    def self.data_count11
    query = <<-SQL
    select products.Product_Type,count(products.Order_No) as products_count 
    from (select * from a05b00_order limit 50000) as products group by products.Product_Type;
        SQL
    data=self.find_by_sql(query)
    data.map{|d| d.products_count}
    end


   end