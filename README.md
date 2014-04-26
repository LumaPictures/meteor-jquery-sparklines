Sparklines [![Build Status](https://travis-ci.org/austinrivas/meteor-sparklines.svg)](https://travis-ci.org/austinrivas/meteor-sparklines)
=================

A reactive blaze component for rendering live jQuery Sparklines.

jQuery Sparklines Official Documentation : http://omnipotent.net/jquery.sparkline/#s-docs

## [ Annotated Source ](http://austinrivas.github.io/meteor-sparklines/)

## Installing sparklines using Meteorite

```
$ mrt add sparklines
```

## Usage

```
{{sparkLine
    selector="example-sparkline"
    data=example.data
}}
```

## [ Live Example ](http://sparklines.meteor.com)

### To run example locally
``` sh
$ git clone git://github.com/austinrivas/meteor-sparklines.git
$ cd meteor-sparklines/example
$ mrt add sparklines
$ meteor
```

### Tests
``` sh
$ cd meteor-sparklines/example
$ mrt test-packages ./
```
