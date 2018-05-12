$ ->
  App.facility_svg = App.cable.subscriptions.create { channel: "FacilitySvgChannel", facility_id: $('#facility').attr('data-id') },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      $("h1.name").text data['username']
      $("#facility").fadeOut(500)
      $("#thanks").fadeIn(500)
      $('.qr-code').html data['svg']
      callback = ->
        $("#thanks").fadeOut(1000)
        $("#facility").fadeIn(1000)
      setTimeout callback, 2000
