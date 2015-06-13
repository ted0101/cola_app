class Order < ActiveRecord::Base
    self.table_name = "a05b00_order"

    def self.data_count3
    query = <<-SQL
    select products.Product_Type,count(products.Order_No) as products_count 
    from (select * from a05b00_order limit 50000) as products group by products.Product_Type;
        SQL
    data=self.find_by_sql(query)
    data.map{|d| {name:d.Product_Type.strip,count:d.products_count}}
    end

  def self.data_count4
    query = <<-SQL
    select order1.Customer_Type,count(order1.Order_No) as order_count 
    from (select * from a05b00_order limit 50000) as order1 group by order1.Customer_Type;
        SQL
    data=self.find_by_sql(query)
    data.map{|d| {name:d.Customer_Type.strip,count:d.order_count}}
    end

end

