EmberDashboard.ColumnChartComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['highcharts']

  contentChanged: (->
    @rerender()
  ).observes('series')

  didInsertElement: ->
    $("##{@chartId}").highcharts({
      chart: {type: 'column'},
      title: {text: 'Revenue by Product'},
      legend: {enabled: false},
      xAxis: {
        title: {
          text: 'Product Number'
        }
      },
      series: @series,
      tooltip: {pointFormat: '{series.name}: <b>{point.y}</b><br/>'},
      })

  willDestroyElement: ->
    $("##{@chartId}").highcharts().destroy()
