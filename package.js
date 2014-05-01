Package.describe({
    summary: "A reactive blaze component for rendering live jQuery Sparklines."
});

Package.on_use(function (api) {
  api.use([
    'coffeescript'
  ],['client', 'server']);

  // for helpers
  api.use([
    'jquery',
    'ui',
    'templating',
    'spacebars'
  ], 'client');

  api.add_files([
    'vendor/jquery.sparklines.js',
    'lib/sparklines.html',
    'lib/sparklines.coffee'
  ], [ 'client' ]);
});

Package.on_test(function (api) {
  api.use([
    'coffeescript',
    'jquery-sparklines',
    'tinytest',
    'test-helpers'
  ], ['client', 'server']);

  api.add_files([
    'tests/sparklines.tests.coffee'
  ], ['client', 'server']);
});