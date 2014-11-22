SimpleDashboard.ColumnChartComponent = Ember.Component.extend
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
      series: [{
        name: 'Quantity',
        data: [4,4]
        }, {
        name: 'Revenue',
        data: [10.0,10.0]
      }]
      })

  willDestroyElement: ->
    $("##{@chartId}").highcharts().destroy()
