# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $verticalLinks = $('.vertical-link')

  $verticalLinks.on 'click', (e) ->
    $vertical = $(e.target)
    verticalName = $vertical.data('vertical')
    url = '/posts/vertical/' + verticalName
    $('.pagination').remove()
    $.getScript url, ->
      $('.vertical-link').removeClass('active')
      $('.' + verticalName).addClass('active')