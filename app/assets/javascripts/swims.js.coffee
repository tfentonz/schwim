# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#swim_swam_on').datepicker
    maxDate: 0

  $('.ui-datepicker-trigger').addClass('btn')
