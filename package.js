Package.describe({
    summary: "This jQuery plugin generates sparkliness (small inline charts) directly in the browser using data supplied either inline in the HTML, or via javascript"
});

Package.on_use(function (api) {
    api.use('jquery', 'client');
    api.add_files(['lib/jquery.sparklines.js'], 'client');
});

Package.on_test(function (api) {
    api.use(['sparklines', 'tinytest', 'test-helpers'], ['client', 'server']);
    api.add_files('/tests/_tests.js', ['client', 'server']);
});