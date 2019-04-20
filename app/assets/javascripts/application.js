// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require_tree .
// alert("abc");
// $("#button_new_todo").click(function(event) {
// 	alert("OK");
//   event.preventDefault();
//   $("#new_todo").submit();
// });

$(document).ready(function() {});


$(document).on("click", "#button_new_todo", function(event){
   event.preventDefault();
   $("#new_todo").submit();

});

$(document).on("click", "#button_cancel", function(event){
   // $("#form_add_todo").style.visibility = "hidden";
   event.preventDefault();
   $('#form_add_todo').slideUp();

});
$(document).on("click", "#img_plus", function(event){
	event.preventDefault();
	$("#form_add_todo").slideDown();
	$("#form_add_todo").css('display', 'block');
	// $("#form_add_todo").css('visibility', 'visible');
	
   	
});