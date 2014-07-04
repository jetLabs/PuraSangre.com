// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {
	$('body').addClass( "bg-landing" );
        $('.bg-landing').blurjs({
			source: 'body',
			radius: 7,
			overlay: 'rgba(0,0,0,0.8)'
		});
 });
