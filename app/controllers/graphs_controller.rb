class GraphsController < ApplicationController
  def index
    controller = params[:controller]
    puts controller
    puts "Hello"
    ids = params[:id]
    puts ids
    @page = params[:name]
    puts @page.inspect
    puts "page"
    if @page == "D1"
    	@arra1 = ['TEST2']
    	@arra2 = ['TEST1']
    end
    
  end




end
