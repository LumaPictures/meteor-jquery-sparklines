Sparklines [![Build Status](https://travis-ci.org/austinrivas/meteor-sparklines.svg)](https://travis-ci.org/austinrivas/meteor-sparklines)
==========

A reactive blaze component for rendering live jQuery Sparklines.

## [ jQuery Sparklines Official Documentation ](http://omnipotent.net/jquery.sparkline/#s-docs)
## [ Live Example ](http://sparklines.meteor.com)
## [ Annotated Source ](http://austinrivas.github.io/meteor-sparklines/)

## Usage

By default sparkline will create a line graph with a selector of `sparkline-{guid}`

There are four data sources that you can draw from.
    + CSV Datasource : `{{> sparkline csv="1,2,3,4" }}`
    + Array Datasource : `{{> sparkline array=someArray }}`
    + DOM Datasource : `{{#sparkline domSource="true" }} {{ someCSVData }} {{/sparkline}}`
    + Cursor Datasource : `{{> sparkline cursor=someCursor property="value" }}`

You can specify any of the types allowed by the sparklines plugin
    + Line : `{{> sparkline type="line" array=someArray }}`
    + Bar : `{{> sparkline type="bar" array=someArray }}`
    + Tristate: `{{> sparkline type="tristate" array=someArray }}`
    + Discrete : `{{> sparkline type="discrete" array=someArray }}`
    + Bullet : `{{> sparkline type="bullet" array=someArray }}`
    + Pie : `{{> sparkline type="pie" array=someArray }}`
    + Box Plots : `{{> sparkline type="box" array=someArray }}`

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

The official sparklines docs has a pretty comprehensive list of options and [ great documentation ](http://omnipotent.net/jquery.sparkline/#s-docs).

## Installing sparklines using Meteorite

```
$ mrt add sparklines
```

### To run example locally
``` sh
$ git clone git://github.com/austinrivas/meteor-sparklines.git
$ cd meteor-sparklines/example
$ mrt add sparklines
$ mrt add luma-ui
$ meteor
```

### Tests
``` sh
$ cd meteor-sparklines/example
$ mrt test-packages sparklines
```

## TODO
cover all example use cases found on official site http://omnipotent.net/jquery.sparkline/assets/index.js
