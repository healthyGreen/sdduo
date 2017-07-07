$(function(){	
	/* PC硫붾돱
	$('.pc_gnb').each(function(){
		$("ul li li.on",this).parents('li').addClass('on');
		$("> ul li, li li", this).on('mouseenter focusin',function(){
			$(this).addClass('hv');
		}).on('mouseleave focusout',function(){
			$(this).removeClass('hv');
		});
		$(this).on('mouseenter focusin',function(){
			$(this).addClass("on").stop(true,true).animate({'height':'250px'},500, 'easeOutExpo'); 
			$(this).parent().parent().addClass("line")
		}).on('mouseleave',function(){
			$(this).removeClass('on').stop(true,true).animate({'height':'0px'},500, 'easeInOutExpo');
			$(this).parent().parent().removeClass('line')
		});
	});
	$('*:not(".pc_gnb a")').focus(function(){
		$('.pc_gnb').removeClass('hv');
		$('.pc_gnb').removeClass('on').stop(true,true).animate({"height":"0px"},500, 'easeOutExpo');
	});*/
	
	/* 紐⑤컮�쇰찓�� */
	$('.mb_gnb li.has-sub>a').on('click', function(){
		$(this).removeAttr('href');
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp();
		}
		else {
			element.addClass('open');
			element.children('ul').slideDown();
			element.siblings('li').children('ul').slideUp();
			element.siblings('li').removeClass('open');
			element.siblings('li').find('li').removeClass('open');
			element.siblings('li').find('ul').slideUp();
		}
	});

	$('.mb_gnb>ul>li.has-sub>a').append('<span class="holder"></span>');
	
	/* 紐⑤컮�� �닿린 */
	jQuery(".btn_menu > .btnOpen").on('touchstart click', function() {
		jQuery('.fix_bg').remove();
		jQuery('.mb_gnb').slideDown(500, 'easeInOutExpo').after('<div class="fix_bg"></div>');
		jQuery(this).hide();
		jQuery('#wrapper').addClass('wra_fix');
		jQuery('.btn_menu > .btnClose').css('display','block');
		jQuery(".btn_menu > .btnClose").on('touchend click', function() {
			jQuery(".mb_gnb").slideUp(100, 'easeInOutExpo');
			jQuery(this).hide();
			jQuery('.btn_menu > .btnOpen').show();
			jQuery('.fix_bg').remove();
			jQuery('#wrapper').removeClass('wra_fix');
			return false;
		});
		return false;
	});
	
	function applyGnb() {
        var menuObj   = {},
            activeNum = 0;
        
        menuObj.menuWrap   = $(".pc_gnb");
        menuObj.menues     = $(".pc_gnb > ul > li");
        menuObj.menues.a   = $(".pc_gnb > ul > li > a"); //1depth
        menuObj.menues.a.a = $(menuObj.menues.find("ul li a")); //2depth
        menuObj.isActived  = false;
        menuObj.timer      = null;
        
        menuObj.menues.on("mouseenter", onMouseEnter);
        menuObj.menues.on("mouseleave", onMouseLeave);
        menuObj.menues.a.on("focusin", onFocusIn1depth);
        menuObj.menues.a.on("focusout", onFocusOut);
        menuObj.menues.a.a.on("focusin", onFocusIn2depth);
        menuObj.menues.a.a.on("focusout", onFocusOut)
        
        activeManager();
        
        function onMouseEnter( e ) {
            var menu = e.currentTarget;
            menuObj.menues.removeClass("active");
            $(menu).addClass("active");
        }
        
        function onMouseLeave() { menuObj.menues.removeClass("active") }
        
        function onFocusIn1depth( e ) {
            var $depth1 = $(e.currentTarget);
            menuObj.menues.removeClass("active");
            $depth1.parent().addClass("active");
            menuObj.isActived = false;
        }
        
        function onFocusIn2depth() { menuObj.isActived = false }
        
        function onFocusOut() {
            menuObj.isActived = true;
            menuObj.timer = setInterval( onTimer, 10 );
        }
        
        function onTimer() {
            if( menuObj.isActived ) { menuObj.menues.removeClass("active") }
            clearInterval( menuObj.timer );
            menuObj.timer = null;
        }
        
        function activeManager() {
            // activeNum = $("body").attr("id").slice(-1);
            if( typeof $("body").attr("id") === "undefined" ) {
                return;
            } else {
                activeNum = $("body").attr("id").slice(-1);
            }
            $(".pc_gnb > ul > li").eq( activeNum - 1 ).find(" > a").addClass("on");
        }
    }//applyGnb
    
    applyGnb();
	
	
	/* �꾩껜硫붾돱 �닿린 */
	jQuery(".btn_allMenu > .btnOpen").on('touchstart click', function() {
		jQuery('.fix_bg').remove();
		jQuery('.all_gnb').slideDown(500, 'easeInOutExpo').after('<div class="fix_bg"></div>');
		jQuery(this).hide();
		jQuery('.topGlob').delay(200).fadeIn(2000);
		jQuery('#wrapper').addClass('wra_fix');	
		jQuery('.btn_allMenu > .btnClose').css('display','block');
		jQuery(".btn_allMenu > .btnClose").on('touchend click', function() {
			jQuery(".all_gnb").slideUp(100, 'easeInOutExpo');
			jQuery(this).hide();
			jQuery('.btn_allMenu > .btnOpen').show();
			jQuery('.fix_bg').remove();
			jQuery('#wrapper').removeClass('wra_fix');
			return false;
		});
		return false;
	});

	
	//intro�섏씠吏�媛� pc踰꾩쟾�쇰븣 �곷떒 �쒐뇨, 硫붾돱瑜� �④린湲곗쐞�� �대옒�� 異붽�
	jQuery('#container.intro').parent().children('.header').addClass('intro_head');
});
