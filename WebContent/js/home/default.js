var section = {
	init:function(){
		$('.calendar').datepicker();
		$('.content-header ul li a:eq(0)').addClass('active');
	}
};

$(document).ready(section.init);