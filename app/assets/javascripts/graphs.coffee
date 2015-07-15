# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#jQuery -> $(document).ready ->
#  $.getJSON 'http://www.highcharts.com/samples/data/jsonp.php?filename=aapl-c.json&callback=?', (data) ->
#    dataObject = 
#      rangeSelector:
#        selected: 1
#        inputEnabled: $('#container1').width() > 480
#      title: text: 'AAPL Stock Price'
#      series: [ {
#        name: 'AAPL'
#        data: data
#        tooltip: valueDecimals: 2
#      } ]
#      chart: renderTo: 'container1'
#    chart = $('#container1').highcharts('StockChart', dataObject)
#    return
#  return