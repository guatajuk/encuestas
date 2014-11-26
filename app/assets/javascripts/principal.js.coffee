# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

activado=false
evaluarTitulo=()-> if $('#logo')? and $('#logo').datepicker? then activarTitulo() else move($('#logo'));
activarTitulo=() -> if activado is false then move($('#logo')); activado = true 

# si se recarga la pagina
$(document).ready(evaluarTitulo)
# si se cambia de pagina
$(document).on('page:load', evaluarTitulo);