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
    name = params[:name];

    staticIssues = StaticAnalysis.all.where(identifier: "#{name}")
    @totalIssuesOutput = staticIssues.map do | row |
        { :x => row.time, :y => row.total, :build => row.build }
    end

    @criticalIssuesOutput = staticIssues.map do | row |
        { :x => row.time, :y => row.critical, :build => row.build }
    end

    @errorIssuesOutput = staticIssues.map do | row |
        { :x => row.time, :y => row.error, :build => row.build }
    end

    @warningIssuesOutput = staticIssues.map do | row |
        { :x => row.time, :y => row.warning, :build => row.build }
    end

    @error    = @errorIssuesOutput.to_json
    @total    = @totalIssuesOutput.to_json
    @warning  = @warningIssuesOutput.to_json
    @critical = @criticalIssuesOutput.to_json

    freememory = Memory.all.where(identifier: "#{name}")
    @rssinterface  = freememory.where(platform: 'SOUNDSTRUCTUREVOIPINTERFACE').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx101 = freememory.where(platform: 'VVX101').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx201= freememory.where(platform: 'VVX201').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx301 = freememory.where(platform: 'VVX301').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx310 = freememory.where(platform: 'VVX310').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx410 = freememory.where(platform: 'VVX410').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx411 = freememory.where(platform: 'VVX411').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx500 = freememory.where(platform: 'VVX500').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx501 = freememory.where(platform: 'VVX501').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx600 = freememory.where(platform: 'VVX600').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx601 = freememory.where(platform: 'VVX601').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @rvvx1500 = freememory.where(platform: 'VVX1500').map do | row |
        { :x => row.time, :y => row.memory, :build => row.build }
    end

    @ssinterface = @rssinterface.to_json
    @vvx101      = @rvvx101.to_json
    @vvx201      = @rvvx201.to_json
    @vvx301      = @rvvx301.to_json
    @vvx310      = @rvvx310.to_json
    @vvx410      = @rvvx410.to_json
    @vvx411      = @rvvx411.to_json
    @vvx500      = @rvvx500.to_json
    @vvx501      = @rvvx501.to_json
    @vvx600      = @rvvx600.to_json
    @vvx601      = @rvvx601.to_json
    @vvx1500     = @rvvx1500.to_json



    srtpcall = Srtpcall.all.where(identifier: "#{name}")
    @srtpcall_rssinterface  = srtpcall.where(platform: 'SOUNDSTRUCTUREVOIPINTERFACE').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx101 = srtpcall.where(platform: 'VVX101').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx201= srtpcall.where(platform: 'VVX201').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx301 = srtpcall.where(platform: 'VVX301').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx310 = srtpcall.where(platform: 'VVX310').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx410 = srtpcall.where(platform: 'VVX410').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx411 = srtpcall.where(platform: 'VVX411').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx500 = srtpcall.where(platform: 'VVX500').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx501 = srtpcall.where(platform: 'VVX501').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx600 = srtpcall.where(platform: 'VVX600').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx601 = srtpcall.where(platform: 'VVX601').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_rvvx1500 = srtpcall.where(platform: 'VVX1500').map do | row |
        { :x => row.time, :y => row.srtpcall, :build => row.build }
    end

    @srtpcall_ssinterface = @srtpcall_rssinterface.to_json
    @srtpcall_vvx101      = @srtpcall_rvvx101.to_json
    @srtpcall_vvx201      = @srtpcall_rvvx201.to_json
    @srtpcall_vvx301      = @srtpcall_rvvx301.to_json
    @srtpcall_vvx310      = @srtpcall_rvvx310.to_json
    @srtpcall_vvx410      = @srtpcall_rvvx410.to_json
    @srtpcall_vvx411      = @srtpcall_rvvx411.to_json
    @srtpcall_vvx500      = @srtpcall_rvvx500.to_json
    @srtpcall_vvx501      = @srtpcall_rvvx501.to_json
    @srtpcall_vvx600      = @srtpcall_rvvx600.to_json
    @srtpcall_vvx601      = @srtpcall_rvvx601.to_json
    @srtpcall_vvx1500     = @srtpcall_rvvx1500.to_json



    srtpconf = Srtpconf.all.where(identifier: "#{name}")
    @srtpconf_rssinterface  = srtpconf.where(platform: 'SOUNDSTRUCTUREVOIPINTERFACE').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx101 = srtpconf.where(platform: 'VVX101').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx201= srtpconf.where(platform: 'VVX201').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx301 = srtpconf.where(platform: 'VVX301').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx310 = srtpconf.where(platform: 'VVX310').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx410 = srtpconf.where(platform: 'VVX410').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx411 = srtpconf.where(platform: 'VVX411').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx500 = srtpconf.where(platform: 'VVX500').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx501 = srtpconf.where(platform: 'VVX501').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx600 = srtpconf.where(platform: 'VVX600').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx601 = srtpconf.where(platform: 'VVX601').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_rvvx1500 = srtpconf.where(platform: 'VVX1500').map do | row |
        { :x => row.time, :y => row.srtpconf, :build => row.build }
    end

    @srtpconf_ssinterface = @srtpconf_rssinterface.to_json
    @srtpconf_vvx101      = @srtpconf_rvvx101.to_json
    @srtpconf_vvx201      = @srtpconf_rvvx201.to_json
    @srtpconf_vvx301      = @srtpconf_rvvx301.to_json
    @srtpconf_vvx310      = @srtpconf_rvvx310.to_json
    @srtpconf_vvx410      = @srtpconf_rvvx410.to_json
    @srtpconf_vvx411      = @srtpconf_rvvx411.to_json
    @srtpconf_vvx500      = @srtpconf_rvvx500.to_json
    @srtpconf_vvx501      = @srtpconf_rvvx501.to_json
    @srtpconf_vvx600      = @srtpconf_rvvx600.to_json
    @srtpconf_vvx601      = @srtpconf_rvvx601.to_json
    @srtpconf_vvx1500     = @srtpconf_rvvx1500.to_json


    reboottime = Reboottime.all.where(identifier: "#{name}")
    @reboottime_rssinterface  = reboottime.where(platform: 'SOUNDSTRUCTUREVOIPINTERFACE').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx101 = reboottime.where(platform: 'VVX101').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx201= reboottime.where(platform: 'VVX201').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx301 = reboottime.where(platform: 'VVX301').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx310 = reboottime.where(platform: 'VVX310').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx410 = reboottime.where(platform: 'VVX410').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx411 = reboottime.where(platform: 'VVX411').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx500 = reboottime.where(platform: 'VVX500').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx501 = reboottime.where(platform: 'VVX501').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx600 = reboottime.where(platform: 'VVX600').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx601 = reboottime.where(platform: 'VVX601').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_rvvx1500 = reboottime.where(platform: 'VVX1500').map do | row |
        { :x => row.time, :y => row.reboot, :build => row.build }
    end

    @reboottime_ssinterface = @reboottime_rssinterface.to_json
    @reboottime_vvx101      = @reboottime_rvvx101.to_json
    @reboottime_vvx201      = @reboottime_rvvx201.to_json
    @reboottime_vvx301      = @reboottime_rvvx301.to_json
    @reboottime_vvx310      = @reboottime_rvvx310.to_json
    @reboottime_vvx410      = @reboottime_rvvx410.to_json
    @reboottime_vvx411      = @reboottime_rvvx411.to_json
    @reboottime_vvx500      = @reboottime_rvvx500.to_json
    @reboottime_vvx501      = @reboottime_rvvx501.to_json
    @reboottime_vvx600      = @reboottime_rvvx600.to_json
    @reboottime_vvx601      = @reboottime_rvvx601.to_json
    @reboottime_vvx1500     = @reboottime_rvvx1500.to_json


  end




end
