@ExampleData = new Meteor.Collection 'exampleData'

if Meteor.isServer
  Meteor.startup ->
    if ExampleData.find().count() is 0
      exampleData = [ 10, 14, 8, 45, 23, 41, 22, 31, 19, 12, 28, 21, 24, 20 ]
      count = 0
      exampleData.forEach ( value ) ->
        data = value: value
        ExampleData.insert data
        count++
      console.log "#{ count } data points inserted into ExampleData collection"

