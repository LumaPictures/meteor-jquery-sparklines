Sparklines [![Build Status](https://travis-ci.org/austinrivas/meteor-sparklines.svg)](https://travis-ci.org/austinrivas/meteor-sparklines)
=================

A reactive blaze component for rendering live jQuery Sparklines.

jQuery Sparklines Official Documentation : http://omnipotent.net/jquery.sparkline/#s-docs

## [ Live Example ](http://sparklines.meteor.com)
## [ Annotated Source ](http://austinrivas.github.io/meteor-sparklines/)

## Usage
```
{{> sparkline
    selector=example.selector
    data=example.data
    options=example.options
}}
```

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
