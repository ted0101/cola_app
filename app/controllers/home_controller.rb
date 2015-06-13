class HomeController < ApplicationController
before_action :set_count, only: [:count2, :count4, :count3, :count1, :index]

	def index
		if params[:date].present?
            bindind.pry
        Order.data_count3.each_with_index do|d,idx|
        @data<<[d[:name],d[:count]]
            end
        end
    end

    def count1
    @data=Groupclick.data_count1
    @array=[]
    @array[0]=@data[0]+@data[1]+@data[3]+@data[5]
    @array[2]=@data[4]
    @array[1]=@data[2]
    @data1=Groupclick.data_count11
    end

    def count3
    Order.data_count3.each_with_index do|d,idx|
    @data<<[d[:name],d[:count]]
    end
    end

    def count4
    Order.data_count4.each_with_index do|d,idx|
    @data<<[d[:name],d[:count]]
    end
    end

    def count2
   	Groupclick.data_count2.each_with_index do|d,idx|
    @data<<[d[:name],d[:count]]
    end
    end

   private
   def set_count
   	colors=['#F7464A','#46BFBD','#FDB45C','#FDB42C','#FDB41C','#FDB35C']
    @data=[]
   end
end
