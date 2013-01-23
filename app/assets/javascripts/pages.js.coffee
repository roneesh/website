# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#design_link_img').mouseover ->
  	$(this).fadeTo('fast', 0.25)
  	$(this).append.text('<p>Design</p>')
  $('#design_link_img').mouseleave ->    
    $(this).fadeTo('slow', 1.0)