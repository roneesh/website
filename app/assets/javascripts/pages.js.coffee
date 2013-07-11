# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.tab img').mouseover ->
  	$(this).fadeTo('fast', 0.25)
  $('.tab img').mouseleave ->    
    $(this).fadeTo('slow', 1.0)

  $('.tab').hide()
  $('#portfolio_navigation_images div:first').show()
  $('.portfolio_nav_list li:first').addClass('tab-active')

  $('.portfolio_nav_list a').on('click', ->
    $('.portfolio_nav_list li').removeClass('tab-active')
    $(this).parent().addClass('tab-active')
    $('#portfolio_navigation_images div').hide()
    $($(this).attr('href')).show()
    )

  $('.transform_box').mouseover ->
    $(this).addClass('transform')


    
  # $('a.html5').click ->  
  #   audioSection = $('.track')
  #   $(this).hide()
  #   audio = $("<audio>", {controls: 'controls', autoplay: 'autoplay'})  
  #   url = $(this).attr('href')
  #   $('<source>').attr('src', url).appendTo(audio)
  #   audioSection.html(audio)
  #   return false
  item = ""
  $(".track-panel").on "click", ".icon-play", ->
    $(this).hide()
    track = $(this).parent('.play-icon').parent('.track-panel')
    audio_object = track.children('.play-icon').children('audio').attr("controls", "controls")
    audio_object.get(0).play()


  $('.content_box').on('click', ->
    $('.content_box').addClass('backwards'))

  $('#name_area').on('click', ->
    $('.pics').replaceWith("<div id='gif-area'><img src='/assets/shining.gif'></img></div>"))


