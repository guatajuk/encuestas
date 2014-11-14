# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

activado=false
evaluar=()-> if $('#survey_deadline')? and $('#survey_deadline').datepicker? then activar() else $("#survey_deadline").hover(activar)
activar=() -> if activado is false then $('#survey_deadline').datepicker() activado = true 

# si se recarga la pagina
$(document).ready(evaluar)
# si se cambia de pagina
$(document).on('page:load', evaluar);


