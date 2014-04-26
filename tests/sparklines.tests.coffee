if Meteor.isClient
  Tinytest.add "Sparklines - defined on client", ( test ) ->
    test.notEqual $().sparkline, undefined, "Expected DataTable jQuery plugin to be defined on the client."