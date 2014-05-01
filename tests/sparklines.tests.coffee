if Meteor.isClient
  Tinytest.add "jQuery Sparklines - defined", ( test ) ->
    test.notEqual $().sparkline, undefined, "Expected DataTable jQuery plugin to be defined on the client."