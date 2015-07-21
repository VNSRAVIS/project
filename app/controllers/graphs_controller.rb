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
    
=begin
    puts staticIssues.to_json(:only => [ :time, :total])
    json = {
        x.total,
        x.time,
    }
    render :json => json, :status => :ok
    x = staticIssues.all
    puts x.as_json

    @j = {
        "name" : "Total",
        "data" : StaticAnalysis.pluck(:time, :total)
    }
    @j.to_json
    puts @j
    puts @t



    [
                        {
                            "name": "Total",
                            "data":  <%= raw @total %>
                        },
                        {
                            "name": "Critical",
                            "data":  <%= raw @critical %>
                        },
                        {
                            "name": "Errors",
                            "data":  <%= raw @errors %>
                        },
                        {
                            "name": "Warnings",
                            "data":  <%= raw @warning %>
                        },
                        ],



staticIssues = StaticAnalysis.all
@total    = staticIssues.pluck(:time, :total, :svnversion)
out = staticIssues.to_json(:only => [ :time, :total, :svnversion ]);
out.each do | row |
    row.x = row.time
    row.y = row.total
puts row.x
puts row.y
end
=end

=begin
    staticIssues = StaticAnalysis.all
    @total    = staticIssues.pluck(:time, :total, :svnversion)
    @errors   = staticIssues.pluck(:time, :error)
    @warning  = staticIssues.pluck(:time, :warning)
    @critical = staticIssues.pluck(:time, :critical)
    puts @total    
=end

staticIssues = StaticAnalysis.all
@totalIssuesOutput = staticIssues.map do | row |
    { :x => row.time, :y => row.total, :svnversion => row.svnversion }
end

@criticalIssuesOutput = staticIssues.map do | row |
    { :x => row.time, :y => row.critical, :svnversion => row.svnversion }
end

@errorIssuesOutput = staticIssues.map do | row |
    { :x => row.time, :y => row.error, :svnversion => row.svnversion }
end

@warningIssuesOutput = staticIssues.map do | row |
    { :x => row.time, :y => row.warning, :svnversion => row.svnversion }
end

@error    = @errorIssuesOutput.to_json
@total    = @totalIssuesOutput.to_json
@warning  = @warningIssuesOutput.to_json
@critical = @criticalIssuesOutput.to_json


  end




end
