# themes dashboard

#= require jquery.1.10.2.min
#= require jquery-ui
#= require bootstrap.min
#= require raphael.min
#= require selectivizr-min
#= require jquery.mousewheel
#= require jquery.vmap.min
#= require jquery.vmap.world
#= require jquery.bootstrap.wizard
#= require fullcalendar.min
#= require gcal
#= require jquery.dataTables.min
#= require datatable-editable
#= require jquery.easy-pie-chart
#= require excanvas.min
#= require jquery.isotope.min
#= require isotope_extras
#= require modernizr.custom
#= require jquery.fancybox.pack
#= require select2
#= require styleswitcher
#= require wysiwyg
#= require summernote.min
#= require jquery.inputmask.min
#= require jquery.validate
#= require bootstrap-fileupload
#= require bootstrap-datepicker
#= require bootstrap-timepicker
#= require bootstrap-colorpicker
#= require bootstrap-switch.min
#= require typeahead
#= require daterange-picker
#= require date
#= require morris.min
#= require skycons
#= require fitvids
#= require jquery.sparkline.min
#= require main
#= require respond
#= require bootstrap-tagsinput

# themes starterapp

# require bootstrap
# require jquery.turbolinks
# require turbolinks
# require nprogress
# require nprogress-turbolinks
# require rails_confirm_dialog
# require jquery.scrollto

# Add error class to .avatar images if they fail to load
# See avatar.scss and _avatar.html.haml
# require imagesloaded
# require avatar.errors



$ ->
  artist_id = undefined

  $("#artist").keyup ->
    artist_id = undefined if $("#artist").is(":blank")
    return


  $("#artist").autocomplete
    source: (request, response) ->
      $.ajax
        url: "https://developer.echonest.com/api/v4/artist/suggest"
        dataType: "jsonp"
        data:
          results: 12
          api_key: "VAWR14HUJP7LUI5T7"
          format: "jsonp"
          name: request.term

        success: (data) ->
          response $.map(data.response.artists, (item) ->
            label: item.name
            value: item.name
            id: item.id
          )
          return

      return

    minLength: 3
    select: (event, ui) ->
      $("#log").empty()
      $("#log1").append (if ui.item then ui.item.id + " " + ui.item.label else "(nothing)")
      artist_id = ui.item.id
      return

  $("#song").autocomplete
    source: (request, response) ->
      $.ajax
        url: "https://developer.echonest.com/api/v4/song/search"
        dataType: "jsonp"
        data:
          results: 12
          api_key: "VAWR14HUJP7LUI5T7"
          format: "jsonp"
          title: request.term
          artist_id: artist_id

        success: (data) ->
          response $.map(data.response.songs, (item) ->
            label: item.artist_name + " - " + item.title
            value: item.title
            id: item.id
          )
          return

      return

    minLength: 3
    select: (event, ui) ->
      $("#log").empty()
      $("#log").css('display', 'none').append (if ui.item then ui.item.id + " " + ui.item.label else "(nothing)")
      return  


    $("#btn-afficher-tout").click ->
      if $("#artist").is(":blank")
        $("#recherche").css("display", "block");

      if $("#song").is(":blank")
        $.ajax
          url: "https://developer.echonest.com/api/v4/artist/songs"
          dataType: "jsonp"
          data:
            results: 100
            api_key: "VAWR14HUJP7LUI5T7"
            format: "jsonp"
            name: $("#artist").val()

          success: (data) ->
            $("#log").empty()
            $("#log").append "<h6> Résultats pour : " + $("#artist").val() + "</h6>"
            $.each data.response.songs, (i, item) ->
              $("#log").append "<h5>" + item.title + "</h5>"
              return
            return

      else
        $.ajax
          url: "https://developer.echonest.com/api/v4/song/search"
          dataType: "jsonp"
          data:
            results: 12
            api_key: "VAWR14HUJP7LUI5T7"
            format: "jsonp"
            title: $("#song").val()
            artist: $("#artist").val()

          success: (data) ->
            $("#log").empty()
            $("#log").append "<ul>"
            $.each data.response.songs, (i, item) ->
              $("#log").append "<li>" + item.artist_name + " - " + item.title + "</li>"
              return
            $("#log").append "</ul>"

            return
      
  return



myModal = ->
  $("#myModal").modal "show"
  return
setTimeout myModal, 2500