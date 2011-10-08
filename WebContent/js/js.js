$(document).ready(function(){

/* tabs */
$('.tabs').tabs();

/* Moveing gadgets */
$(function() {$(".vertsortable").sortable({opacity: 0.6, handle: '.vertsortable_head'});});
/*$(function() {$(".horizsortable").sortable({opacity: 0.6, handle: '.horizsortable_head'});});*/

/* Datapicker */
$(function() {$('#datepicker').datepicker({inline:true});});

/* show or hide gadget */

  $('a[rel="hide_block"]').click(function(){
	if ($(this).parent('div').parent('div').children('div.gadget_content').css('height')=='auto') {
      $(this).css('background-image','url(images/gadget_dropup.gif)');
	  $(this).parent('div').children('h3').css('background-color','#d4e5dc'); }
	else {
      $(this).css('background-image','url(images/gadget_dropdown.gif)');
      $(this).parent('div').children('h3').css('background-color','#f9f7c7'); }
    $(this).parent('div').parent('div').children('div.gadget_content').slideToggle();
	return false;});

/* close gadget */
  $('a.closegadget').click(function(){ $(this).parent('div').parent('div').css('display','none'); return false;});

/* close message */
  $('a.close_mess').click(function(){ $(this).parent('div').parent('div').css('display','none'); return false;});

/* dialogs */

	//select all the a tag with name equal to modal
	$('a[name=modal]').click(function(e) {
		//Cancel the link behavior
		e.preventDefault();
		
		//Get the A tag
		var id = $(this).attr('href');
	
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
	
		//Set heigth and width to mask to fill up the whole screen
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#mask').fadeIn(1000);	
		$('#mask').fadeTo("slow",0.8);	
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
		//transition effect
		$(id).fadeIn(2000); 
	
	});
	
	//if close button is clicked
	$('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});			

});
