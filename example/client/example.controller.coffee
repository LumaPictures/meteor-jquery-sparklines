class @ExampleController extends PackageLayoutController
  data: ->
    @data.sparklines =
      csvDataSeriesExample: "10,14,8,45,23,41,22,31,19,12,28,21,24,20"
      arrayDataSeriesExample: ["10", "14", "8", "45", "23", "41", "22", "31", "19", "12", "28", "21", "24", "20"]
      cursorDataSeriesExample: ExampleData.find()

    @data.package =
      name: "Sparklines"
      description: "jQuery Sparklines Reactive Blaze Component"
      owner: "lumapictures"
      repo: "meteor-jquery-sparklines"
    super