$(function(){
	//kwicks begin
	$('.kwicks').kwicks({
		 max : 709,
		 spacing : 1,
		 event : 'mouseenter'
	});
	
	$(".kwicks li").hover(function(){
		$(".kwicks li h4.title").stop(true, true).fadeOut("fast");
		$(this).find("span").stop(true, true).fadeOut();
		$(this).find(".description").stop().animate({bottom:"0"}, "normal")
	}, function(){
		$(".kwicks li h4.title").stop(true, true).fadeIn("fast");
		$(this).find("span").stop(true, true).fadeIn();
		$(this).find(".description").stop().animate({bottom:"-70px"}, "normal")
	});
});