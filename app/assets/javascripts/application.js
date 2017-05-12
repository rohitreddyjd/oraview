// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
   $('body').prepend('<button onclick="window.location.reload(true);">Reload</button>' +
      '&nbsp;&nbsp;&nbsp;&nbsp;Double click on sqlid to see further details.');
   var sqlcol = $("table tr th:contains('SQL Id')").index();
   /* single click code       $('td').on('click',function() {*/
   $('td').dblclick(function() {
        var col = $(this).parent().children().index($(this));
		if (col == sqlcol ){
        	var row = $(this).parent().parent().children().index($(this).parent());
	        /*alert('Row: ' + row + ', Column: ' + col );*/
            var xstr = $(this).html();
			var sqlid = xstr.substring(xstr.indexOf(">") + 2, xstr.indexOf("<",xstr.indexOf(">")) ).trim();
			var execid= xstr.substring(xstr.indexOf("id:") + 3, xstr.indexOf("<",xstr.indexOf("</span")) ).trim();
            /*alert( "!" + sqlid + "!");*/
            window.open('display_sql_monitor?connm='+$('#connm').val()+'&sqlid='+sqlid+'&execid='+execid+'&HTMLOnly='+$('#HTMLOnly').val());
		}
  });
}); 