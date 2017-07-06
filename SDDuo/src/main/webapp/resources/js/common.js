$(document).ready(function(){
	$(".gnb").on("mouseenter focusin",function(){

		if($(".subWrap").is(":hidden")){
			$(".subWrap").slideDown();
			$(".subBg").slideDown();
		}else{
			$(".subWrap").show();
			$(".subBg").show();
		}

		$(".gnb > li").on("mouseenter focusin",function(){
			$(".gnb > li > a").removeClass("current");
			$(this).children().addClass("current");
			
		});

	});

	$(".gnb").on("mouseleave blur",function(){
		$(".subWrap").slideUp();
		$(".subBg").slideUp();

	});

	$(".gnb > li").on("mouseleave blur",function(){
		$(this).children().removeClass("current");
	});

	$('*:not(".gnb *")').focus(function(){
		$(".subWrap").slideUp();
		$(".gnb > li > a").removeClass("current");
		$(".subBg").slideUp();
	});

});


//메인 슬라이드



    $(window).load(function(){
      $('.flexslider, .flexslider2, .flexslider3').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });


    });


//퀵바


function formCheck132(frm){
var obj = document.getElementById("132_f0_0");
if(obj.value == ""){
   alert("이름을 입력하세요");
   obj.focus();
   return false;
}
var obj = document.getElementById("132_f1_0");
if(obj.value == ""){
   alert("관심부위을 선택하세요");
   obj.focus();
   return false;
}
var obj = document.getElementById("132_f2_1");
if(obj.value == ""){
   alert("연락처을 입력하세요");
   obj.focus();
   return false;
}
var obj = document.getElementById("132_f2_2");
if(obj.value == ""){
   alert("연락처을 입력하세요");
   obj.focus();
   return false;
}
var obj = document.getElementById("132_f3_0");
if(obj.value == ""){
   alert("성별을 선택하세요");
   obj.focus();
   return false;
}
var obj = document.getElementById("132_f4_0");
if(obj.value == ""){
   alert("희망시간을 선택하세요");
   obj.focus();
   return false;
}
var c_checked = false;var obj = document.getElementById("132_f6_0");
if(obj.checked == true) c_checked = true;
if(c_checked == false){
   alert("개인정보수집 이용 동의 을 선택하세요");
   return false;
}
}


