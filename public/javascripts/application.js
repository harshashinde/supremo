// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	 // $("#users_table,#tt_in_admin,#ptable_in_admin").tablesorter();
	  //$("#users_table,#tt_in_admin,#ptable_in_admin").tableHover({colClass: 'hover'}); 
	  //$("#users_table,#tt_in_admin,#ptable_in_admin").tableHover();
	  $(".tablesorter")
	  .tablesorter({widthFixed: true, widgets: ['zebra']}); 
    //.tablesorterPager({container: $("#pager"),size: 20,positionFixed: false}); 
	  //tablesorter();
	  //$(".tablesorter").tableHover();
})
$(document).ready(function(){
	$("td").hover(
	function(){
		$(this).parent("tr").addClass("hover");
	},	
	function(){
		$(this).parent("tr").removeClass("hover");
	}
	)
})