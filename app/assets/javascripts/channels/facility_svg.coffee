$ ->
  App.facility_svg = App.cable.subscriptions.create { channel: "FacilitySvgChannel", facility_id: $('#facility').attr('data-id') },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      $("#facility").fadeOut 500, ->
        $("h1.name").text data['username']
        $("#thanks").fadeIn(500)

      callback = ->
        $('.qr-code').html data['svg']
        $("#thanks").fadeOut 1000, ->
          $("#facility").fadeIn(1000)
      setTimeout callback, 2000
