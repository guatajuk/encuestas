$(function(){

function move(elem) {
   var logoName="Sistema   de   Evaluación Universitario";

   var durationTime=3900;
   var logoHeader = elem;
   var output="";
   for(indx in logoName)
   {
     output+="<span class=\"charx\">"+logoName[indx]+"</span>";
   }
   $(logoHeader).html(output);
   //logoHeader.lettering() // wrap <span class="charx"/ > around each character within header
   var $spans = logoHeader.find('span')
   var delay = 0
   logoHeader.on('click', function(){
     $spans.each(function(){
       $(this).css({transitionDelay: delay+'s'}) // apply sequential trans delay to each character
       delay += 0.1
     })
     logoHeader.addClass('dropped') // Add "dropped" class to header to apply transition
     setTimeout(function(){ // reset header code
       $spans.each(function(){
	 $(this).css({transitionDelay: '0ms'}) // set transition delay to 0 so when 'dropped' class is removed, letter appears instantly
       })
       logoHeader.removeClass('dropped') // remove class at the "end" to reset header.
       delay = 0
     }, durationTime) // 1800 is just rough estimate of time transition will finish, not the best way
   })


 }
 move($("#logo"));

});