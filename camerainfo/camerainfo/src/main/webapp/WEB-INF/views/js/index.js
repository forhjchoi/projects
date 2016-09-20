$(document).ready(function(){
$(function() { 
	$(".position", this).click(function(){
		$(".tit").removeClass('menu_on');
		$(this).parent().parent().children("li").removeClass('menu_on');
		$(this).parent().addClass('menu_on');
		if($(this).parent().children(".thum_list").css("display")!= "none"){
			$(this).parent().removeClass('menu_on');
			$("+ ul",this).hide();
		}else{
			$(".thum_list").css("display","none"); 
			$(".mem_list").css("display","none"); 
			$(".j_list").css("display","none"); 
			$("+ ul",this).show(); //클릭했을떄 형제 ul block상태
		}
	});	
	/*$(".tit", this).click(function(){
		$(".gnb_menu li").removeClass('menu_on');
		$(this).parent().children("li").removeClass('menu_on');
		$(this).addClass('menu_on');
		if($(this).parent().children(".mem_list").css("display")!= "none"){
			$(this).removeClass('menu_on');
			$("+ ul",this).hide();
		}else{
			$(".mem_list").css("display","none"); 
			$(".thum_list").css("display","none"); 
			$(".j_list").css("display","none"); 
			$("+ ul",this).show(); //클릭했을떄 형제 ul block상태
		}
	});	*/
});
$(".position_j", this).click(function(){
	$(".tit").removeClass('menu_on');
	$(this).parent().parent().children("li").removeClass('menu_on');
	$(this).parent().addClass('menu_on');
	if($(this).parent().children(".j_list").css("display")!= "none"){
		$(this).parent().removeClass('menu_on');
		$(".j_list").hide(); 
	}else{
		$(".mem_list").css("display","none"); 
		$(".thum_list").css("display","none"); 
		$(".j_list").show(); 
	}
});	
});