jQuery Sparklines [![Build Status](https://travis-ci.org/lumapictures/meteor-jquery-sparklines.svg)](https://travis-ci.org/lumapictures/meteor-jquery-sparklines)
=================

A reactive blaze component for rendering live jQuery Sparklines.

## [ jQuery Sparklines Official Documentation ](http://omnipotent.net/jquery.sparkline/#s-docs)
## [ Live Example ](http://jquery-sparklines.meteor.com)

## Usage

There are four data sources that you can draw from.
 + CSV Datasource : `{{> sparkline csv="1,2,3,4" }}`
 + Array Datasource : `{{> sparkline array=someArray }}`
 + DOM Datasource : `{{#sparkline domSource="true" }} {{ someCSVData }} {{/sparkline}}`
 + Cursor Datasource : `{{> sparkline cursor=someCursor property="value" }}`

By default sparkline will create a line graph with a selector of `sparkline-{guid}`

If you need the selector for something else you can set it via the `selector` option.

`{{> sparkline selector="my-sparkline" array=someArrayData }}`

You can specify any of the types allowed by the jquery-sparklines plugin
 + [ Line ](http://jquery-sparklines.meteor.com/line-charts) : `{{> sparkline type="line" array=someArray }}`
 + [ Bar ](http://jquery-sparklines.meteor.com/bar-charts) : `{{> sparkline type="bar" array=someArray }}`
 + [ Tristate ](http://jquery-sparklines.meteor.com/tristate-charts): `{{> sparkline type="tristate" array=someArray }}`
 + [ Discrete ](http://jquery-sparklines.meteor.com/discrete-charts): `{{> sparkline type="discrete" array=someArray }}`
 + [ Bullet ](http://jquery-sparklines.meteor.com/bullet-charts) : `{{> sparkline type="bullet" array=someArray }}`
 + [ Pie ](http://jquery-sparklines.meteor.com/pie-charts) : `{{> sparkline type="pie" array=someArray }}`
 + [ Box Plots ](http://jquery-sparklines.meteor.com/box-charts) : `{{> sparkline type="box" array=someArray }}`

You can also specify preset styles or pass in your own css classes
```html
{{> sparkline
    styles="bar-success"
    csv=sparklines.csvDataSeriesExample
}}
```

Same goes for the sparklines configuration options
```html
{{> sparkline
    csv=sparklines.csvDataSeriesExample
    options=options
}}
```

The official jquery-sparklines docs has a pretty comprehensive list of options and [ great documentation ](http://omnipotent.net/jquery.sparkline/#s-docs).

## Installing sparklines using Meteorite

```
$ mrt add jquery-sparklines
```

### To run example locally
```
$ git clone git://github.com/lumapictures/meteor-jquery-sparklines.git
$ cd meteor-jquery-sparklines/example
$ mrt
$ meteor
```

### Tests
```
$ cd meteor-jquery-sparklines/example
$ mrt test-packages jquery-sparklines
```
