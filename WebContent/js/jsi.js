$(document).ready(function(){

/* interface */

$(function() {
  $('#jsi_account').prepend('<img src="images/icon_button1.gif" width="18" height="18">');
  $('#jsi_settings').prepend('<img src="images/icon_button2.gif" width="20" height="18">');
  $('#jsi_logout').prepend('<img src="images/icon_button3.gif" width="15" height="18">');
  $('#tm').before('<img src="images/icon_clock.gif" width="22" height="21" />');

  $('.header').wrapInner('<div class="header_res"></div>');
  $('.content').wrapInner('<div class="content_res"></div>');
  $('.footer').wrapInner('<div class="footer_res"></div>');
  
  $('.jsi_wbtn').wrapInner('<span><span><span></span></span></span>');
  $('ul.menu').children('li').children('a').wrapInner('<span><span><span></span></span></span>');
  $('a.blackbutton').wrapInner('<span><span><span></span></span></span>');
  $('.jsi_gv').children('h3').wrap('<div class="gadget_title vertsortable_head"></div>');
  $('.jsi_gv').children('.gadget_title').children('h3').before('<a href="#" class="closegadget" rel="close_block"><img src="images/spacer.gif" width="19" height="35" /></a><a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" width="19" height="35" /></a>');
  $('.jsi_gd').children('h3').wrap('<div class="gadget_title"></div>');
  $('.jsi_gd').children('.gadget_title').children('h3').before('<a href="#" class="close closegadget"><img src="images/spacer.gif" width="19" height="35" /></a>');
  $('.jsi_msg').children('h3').wrap('<div class="gadget_title"></div>');
  $('.jsi_msg').children('.gadget_title').children('h3').before('<a href="#" class="closegadget" rel="close_block"><img src="images/spacer.gif" width="19" height="35" /></a>');
  $('.jsi_msg_green').children('.gadget_title').children('h3').prepend('<img src="images/pimpa_green.gif" width="15" height="15" />')
  $('.jsi_msg_red').children('.gadget_title').children('h3').prepend('<img src="images/pimpa_red.gif" width="13" height="13" />')
  
  });

});
