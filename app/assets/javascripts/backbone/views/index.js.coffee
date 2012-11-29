class Discovery.Views.Index extends Backbone.View
  
  template: JST['backbone/templates/index']
  
  events: 
    "click #save_tags": "save"
  
  render: ->
    $(@el).html( @template( @model.toJSON() ))  
    $('.star').rating { callback: ->
      
    }  
    @
  
  initialize: ->
    _.bindAll @, "render"
    @.model.bind 'change', @render
    
  save: ->
    @model.save { tag_list: $("#tag_list").val() } 
    false
  
  fetch: ->
    @model.fetch()