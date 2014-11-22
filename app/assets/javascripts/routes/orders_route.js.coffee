SimpleDashboard.OrdersRoute = Ember.Route.extend({
  model: ->
    [
      {
        id: 1,
        firstName: 'James',
        lastName: 'Deen',
        quantity: 1,
        revenue: '10.00',
      },
      {
        id: 2,
        firstName: 'Taylor',
        lastName: 'Swift',
        quantity: 2,
        revenue: '20.00',
      }
    ]
  })
