class GraphsController < ApplicationController
  def index
=begin
    if @page == "D1"
        @arra1 = ['TEST2']
        @arra2 = ['TEST1']
    end
    controller = params[:controller]
    puts controller
    puts "Hello"
    ids = params[:id]
    puts ids
    @page = params[:name]
    puts @page.inspect
    puts "page"
=end
    staticIssues = StaticAnalysis.all
    puts staticIssues.to_json(:only => [ :time, :total])


  end




end
