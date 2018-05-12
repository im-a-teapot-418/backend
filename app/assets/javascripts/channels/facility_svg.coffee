$ ->
  App.facility_svg = App.cable.subscriptions.create { channel: "FacilitySvgChannel", facility_id: $('#facility').attr('data-id') },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      $('.qr-code').html data
