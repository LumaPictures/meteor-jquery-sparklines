# Client
# ======

# ## Initialization

# ##### created()
Template.sparkline.created = ->
  templateInstance = @
  instantiatedComponent = templateInstance.__component__
  instantiatedComponent.prepareSelector()
  instantiatedComponent.prepareStyles()
  instantiatedComponent.prepareOptions()
  instantiatedComponent.prepareLoadingMessage()
  instantiatedComponent.prepareDataSeries()
  instantiatedComponent.log "created", @

# ##### rendered()
# When the component is first rendered datatables is initialized `templateInstance.__component__` is the this context
Template.sparkline.rendered = ->
  templateInstance = @
  instantiatedComponent = templateInstance.__component__
  instantiatedComponent.initialize()
  instantiatedComponent.log "rendered", @

# ##### destroyed()
# Currently nothing is done when the component is destroyed.
Template.sparkline.destroyed = ->
  @log "destroyed"

Template.sparkline.initialize = ->
  @log 'selector', @getSelector()
  #===== Sparkline charts =====//
  $( ".#{ @getSelector() }" ).sparkline @getDataSeries(), @getOptions()

  # Activate hidden Sparkline on tab show
  $("a[data-toggle=\"tab\"]").on "shown.bs.tab", ->
    $.sparkline_display_visible()

  # Activate hidden Sparkline
  $(".collapse").on "shown.bs.collapse", ->
    $.sparkline_display_visible()

  @log "initialized", @

Template.sparkline.prepareLoadingMessage = ->
  @setData 'loadingMessage', @getLoadingMessage()

Template.sparkline.getLoadingMessage = ->
  if @getData().loadingMessage
    return @getData().loadingMessage
  else return @getOptions().loadingMessage or false

# #### `selector` String ( required )
# The table selector for the dataTable instance you are creating, must be unique in the page scope or you will get
# datatable mulit-render error.
Template.sparkline.setSelector = ( selector ) ->
  Match.test selector, String
  @setData 'selector', selector

# ##### getSelector()
Template.sparkline.getSelector = ->
  return @getData().selector or false

# ##### prepareSelector()
Template.sparkline.prepareSelector = ->
  selector = @getSelector()
  unless selector
    selector = "sparkline-#{ @getGuid() }"
  @setSelector selector


# #### `dataSeries` String or Array ( optional )
# The initial dataSeries passed in via the component declaration
Template.sparkline.setDataSeries = ( dataSeries ) ->
  Match.test dataSeries, Array
  @setData 'dataSeries', dataSeries

# ##### getSelector()
Template.sparkline.getDataSeries = ->
  return @getData().dataSeries or false

# ##### prepareSelector()
Template.sparkline.prepareDataSeries = ->
  if _.isString @getDataSeries()
    @setDataSeries @getDataSeries().split ","

# #### `styles` String ( optional )
# A string of the css classes to be applied to this sparkline.
# If a css class matches a preset option it will be merged into the options object.
Template.sparkline.setStyles = ( styles ) ->
  Match.test styles, String
  @setData 'styles', styles

# ##### getStyles()
Template.sparkline.getStyles = ->
  return @getData().styles or false

# ##### prepareStyles()
Template.sparkline.prepareStyles = -> return

# #### `options` Object ( optional )
# ##### defaultOptions
Template.sparkline.defaultOptions =
  loadingMessage: "Loading..."
  disableHiddenCheck: true

# ##### setOptions()
Template.sparkline.setOptions = ( options ) ->
  Match.test options, Object
  @setData 'options', options

# ##### getOptions()
Template.sparkline.getOptions = ->
  return @getData().options or @getPresetOptions( @getStyles() )

# ##### prepareOptions()
# Prepares the sparklines options object by merging the options passed in with the defaults and presets.
Template.sparkline.prepareOptions = ->
  options = @getOptions() or {}
  @setOptions _.defaults( options, @defaultOptions )

# #### `debug` String ( optional )
# A handy option for granular debug logs.
# `true` logs all messages from datatables.
# Set debug to any string to only log messages that contain that string
# ##### examples
#   + `rendered` logs the instantiated component on render
#   + `destroyed` logs when the component is detroyed
#   + `initialized` logs the inital state of the datatable after data is acquired
#   + `options` logs the datatables options for that instantiated component
#   + `fnServerData` logs each request to the server by the component

# ##### isDebug()
Template.sparkline.isDebug = ->
  return @getData().debug or false

# ##### log()
Template.sparkline.log = ( message, object ) ->
  if @isDebug()
    if message.indexOf( @isDebug() ) isnt -1 or @isDebug() is "all"
      console.log "sparkline:#{ @getSelector() }:#{ message } ->", object

# ## Utility Methods

# ##### getTemplateInstance()
Template.sparkline.getTemplateInstance = ->
  return @templateInstance or false

# ##### getGuid()
Template.sparkline.getGuid = ->
  return @guid or false

# ##### getData()
Template.sparkline.getData = ->
  return @getTemplateInstance().data or false

# ##### setData()
Template.sparkline.setData = ( key, data ) ->
  @templateInstance.data[ key ] = data
  @log "#{ key }:set", data

Template.sparkline.getPresetOptions = ( key ) ->
  if key
    keys = key.split " "
    presetOptions = {}
    _.extend( presetOptions, @presetOptions[ key ] ) for key in keys
    return presetOptions
  else return false

Template.sparkline.presetOptions =
  "bar-default":
    type: "bar"
    barColor: "#ffffff"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"
  "bar-info":
    type: "bar"
    barColor: "#3CA2BB"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"
  "bar-warning":
    type: "bar"
    barColor: "#EE8366"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"
  "bar-primary":
    type: "bar"
    barColor: "#32434D"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"
  "bar-success":
    type: "bar"
    barColor: "#65B688"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"
  "bar-danger":
    type: "bar"
    barColor: "#D65C4F"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"