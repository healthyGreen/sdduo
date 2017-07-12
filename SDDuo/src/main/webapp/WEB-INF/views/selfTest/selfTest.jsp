<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


	<!--bjqs-->
	<link rel="stylesheet" href="../resources/css/bjqs.css">
	<script type="text/javascript" src="../resources/js/bjqs-1.3.min.js"></script>
	
		<link rel="stylesheet" href="../resources/css/style.css" />
	<link rel="stylesheet" href="../resources/css/default.css" />
	<link rel="stylesheet" href="../resources/css/demo.css">
	<script>
		$(function() {
			$('ul.tabCon li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tabCon li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
						
		function getResult(tnum, qnum){
			
			var chk = new Array();
			var sum = 0;
			for(i=1; i<=qnum; i++){
				if($('input:radio[name=question_' + tnum + '_' + i + ']:checked').val()){
					chk[i] = $('input:radio[name=question_' + tnum + '_' + i + ']:checked').val();
					console.log(chk[i]);
					sum = sum + parseInt(chk[i]);
				}
			}
			
			$('#result' + tnum).text(sum);
			
			alert(sum);
			document.getElementById('t_score'+ tnum).value = sum;
			
		}
		
		
		 
		 $(document).ready(function() {
			    document.getElementById('submit1').onclick = function() {
			        document.getElementById("form1").submit();
			        return;
			    }
		     
		});
		 
		 
		 $(document).ready(function() {
			    document.getElementById('submit2').onclick = function() {
			        document.getElementById("form2").submit();
			        return;
			    }
		     
		});
		 
		 
		 $(document).ready(function() {
			    document.getElementById('submit3').onclick = function() {
			        document.getElementById("form3").submit();
			        return;
			    }
		     
		});
		 
		 
		 $(document).ready(function() {
			    document.getElementById('submit4').onclick = function() {
			        document.getElementById("form4").submit();
			        return;
			    }
		     
		});


		 
		/*  window.onload = function() {
			    document.getElementById('submit2').onclick = function() {
			        document.getElementById("form2").submit();
			        return;
			    }
			} 
		 
		 window.onload = function() {
			    document.getElementById('submit3').onclick = function() {
			        document.getElementById("form3").submit();
			        return;
			    }
			} 
		 
		 window.onload = function() {
			    document.getElementById('submit4').onclick = function() {
			        document.getElementById("form4").submit();
			        return;
			    }
			}  */


		
		
		function resetResult(tnum, qnum) {
			for(i=1; i<=qnum; i++){
				$('input:radio[name=question_' + tnum + '_' + i + ']:checked').removeAttr("checked");
			}
			$('#result' + tnum).text("0");
		}

	</script>
	
	

<body>

	

	
	

	<div class="sub-content">
	
		<div class="sub-content-inbox ">
			<ul class="tabCon tabStyle">
				<li class="current" data-tab="tab1" ><a href="#">우울증상</a></li>
				<li data-tab="tab2"><a href="#">불안증상</a></li>
				<li data-tab="tab3"><a href="#">스트레스</a></li>
				<li data-tab="tab4"><a href="#">분노조절</a></li>
			</ul>
			
				
				
			<div id="tab1" class="tabcontent tab_content current">
			<form:form commandName="selfModel" id="form1" action="selfWrite.do" enctype="multipart/form-data" method="post">
	
				
				<h4>1. 청소년 우울 자가진단</h4>
					<h5>문항</h5>
					<table class="tableData checkList">
					<caption>청소년 우울 자가진단</caption>
					<colgroup><col width="10%"><col width="*"><col width="5%"><col width="5%"></colgroup>
					<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">문항</th>
						<th scope="col" colspan="2">체크</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row" rowspan="4">1</th>
						<td><em>0</em> 나는 슬픔을 느끼지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_1" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 슬픔을 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_1" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 항상 슬프고 그것을 떨쳐버릴 수 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_1" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 너무나도 슬프고 불행해서 도저히 견딜 수 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_1" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">2</th>
						<td><em>0</em> 나는 앞날에 대해 특별히 낙담하지 않는다.  </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_2" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 앞날에 대해서 별로 기대할 것이 없다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_2" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 앞날에 대해 기대할 것이 아무것도 없다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_2" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나의 앞날은 암담하여 전혀 희망이 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_2" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">3</th>
						<td><em>0</em> 나는 실패감 같은 것을 느끼지 않는다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_3" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 다른 사람들보다 실패의 경험이 더 많다고 느낀다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_3" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나의 살아온 과거를 되돌아보면 나는 항상 많은 일에 실패를 했다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_3" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 한 인간으로서 완전히 실패했다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_3" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">4</th>
						<td><em>0</em> 나는 전과 다름없이 일상생활에서 만족하고 있다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_4" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나의 일상생활은 전처럼 즐겁지가 않다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_4" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 더 이상 어떤 것에서도 실제적인 만족을 얻지 못한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_4" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 모든 것이 다 불만스럽고 지겹다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_4" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">5</th>
						<td><em>0</em> 나는 특별히 죄의식을 느끼지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_5" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 많은 시간 동안 죄의식을 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_5" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 대부분의 시간 동안 죄의식을 느낀다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_5" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 항상 죄의식을 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_5" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">6</th>
						<td><em>0</em> 나는 내가 벌을 받고 있다고 느끼지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_6" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 내가 벌을 받을지도 모른다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_6" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 벌을 받아야 한다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_6" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 현재 내가 벌을 받고 있다고 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_6" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">7</th>
						<td><em>0</em> 나는 내 자신에 대해 실망하지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_7" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 내 자신에 대해 실망하고 있다.</td>
						<td  colspan="2"class="check"><input type="radio" name="question_1_7" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 내 자신을 역겨워하고 있다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_7" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 내 자신을 증오한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_7" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">8</th>
						<td><em>0</em> 나는 내가 다른 사람보다 못하다고 생각하지 않는다. </td>
						<td  colspan="2"class="check"><input type="radio" name="question_1_8" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 나의 약점이나 실수에 대해 내 자신을 비관하는 편이다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_8" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 나의 잘못에 대해 항상 내 자신을 비난한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_8" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 주위에서 일어나는 모든 잘못된 일에 대해 내 자신을 비난한다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_8" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">9</th>
						<td><em>0</em> 나는 자살할 생각 같은 것은 하지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_9" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 자살할 생각은 하고 있으나 실제 실행하지는 않을 것이다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_9" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 자살하고 싶다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_9" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 기회만 있으면 자살하겠다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_9" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">10</th>
						<td><em>0</em> 나는 전보다 더 울지는 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_10" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 전보다 더 많이 운다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_10" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 요즈음 항상 운다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_10" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 전에는 자주 울었지만 요즈음은 울래야 울 기력조차 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_10" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">11</th>
						<td><em>0</em> 나는 전보다 화를 더 내지는 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_11" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 전보다 쉽게 화가 나고 짜증이 난다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_11" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 항상 화가 치민다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_11" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 전에는 화를 내게 했던 일인데도 요즈음은 화조차 나지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_11" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">12</th>
						<td><em>0</em> 나는 다른 사람에 대한 흥미를 잃지 않고 있다. </td>
						<td  colspan="2"class="check"><input type="radio" name="question_1_12" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 다른 사람들에게 흥미를 덜 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_12" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 다른 사람들에 대하여 거의 흥미를 잃었다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_12" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 다른 사람들에 대하여 완전히 흥미를 잃었다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_12" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">13</th>
						<td><em>0</em> 나는 전과 같이 결정하는 일을 잘 해낸다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_13" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 어떤 일에 대해 결정을 못 내리고 머뭇거린다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_13" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 어떤 결정을 할 때 전보다 더 큰 어려움을 느낀다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_13" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 이제 아무 결정도 내릴 수가 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_13" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">14</th>
						<td><em>0</em> 나는 전보다 내 모습이 나빠졌다고 느끼지 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_14" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 내 용모에 대해 걱정한다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_14" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 남들에게 매력을 느끼게 할 용모를 지니고 있지 않다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_14" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 내가 추하고 불쾌하게 보인다고 생각한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_14" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">15</th>
						<td><em>0</em> 나는 전과 다름없이 일을 잘 할 수 있다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_15" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 어떤 일을 시작하려면 전보다 더 힘이 든다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_15" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 어떤 일을 시작하려면 굉장히 힘을 들이지 않으면 안 된다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_15" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 너무 지쳐서 아무런 일도 할 수가 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_15" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">16</th>
						<td><em>0</em> 나는 전과 다름없이 잠을 잘 잔다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_16" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 전처럼 잠을 자지 못한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_16" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 전보다 한두 시간 빨리 잠이 깨며, 다시 잠들기가 어렵다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_16" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 전보다 훨씬 빨리 잠이 깨며, 다시 잠들 수가 없다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_16" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">17</th>
						<td><em>0</em> 나는 전보다 더 피곤하지 않다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_17" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 전보다 더 쉽게 피곤해진다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_17" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 무슨 일을 하든지 곧 피곤해진다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_17" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 너무나 피곤해서 아무 일도 할 수가 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_17" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">18</th>
						<td><em>0</em> 내 식욕은 전보다 나빠지지 않았다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_18" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 내 식욕이 전처럼 좋지 않다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_18" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 내 식욕은 요즈음 매우 나빠졌다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_18" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 요즈음에는 전혀 식욕이 없다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_18" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">19</th>
						<td><em>0</em> 요즈음 나는 몸무게가 줄지 않았다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_19" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 전보다 몸무게가 줄은 편이다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_19" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 전보다 몸무게가 많이 줄었다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_19" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 전보다 몸무게가 너무 많이 줄어서, 건강에 위협을 느낄 정도이다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_19" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row">19-2</th>
						<td><em>0</em> 나는 현재 음식조절로 체중을 줄이고 있는 중이다.</td>
						<td class="check">
							<input type="radio" name="question_1_20" value="0">YES
						</td>
						<td class="check">
							<input type="radio" name="question_1_20" value="1">NO
						</td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">20</th>
						<td><em>0</em> 나는 전보다 건강에 대해 더 염려하지는 않는다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_21" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 두통, 소화불량 또는 변비 등의 현상이 잦다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_21" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 내 건강에 대하여 매우 염려하기 때문에 제대로 일을 하기가 어렵다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_21" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 내 건강에 대하여 너무 염려하기 때문에 다른 일을 거의 생각할 수가 없다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_21" value="3"></td>
					</tr>
					
					<tr>
						<th scope="row" rowspan="4">21</th>
						<td><em>0</em> 나는 요즈음도 이성에 대한 관심에 변화가 없다고 생각한다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_22" value="0"></td>
					</tr>
					<tr>
						<td><em>1</em> 나는 이전보다 이성에 대한 흥미가 적다.</td>
						<td colspan="2" class="check"><input type="radio" name="question_1_22" value="1"></td>
					</tr>
					<tr>
						<td><em>2</em> 나는 요즈음 이성에 대한 흥미를 상당히 잃었다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_22" value="2"></td>
					</tr>
					<tr>
						<td><em>3</em> 나는 이성에 대한 흥미를 완전히 잃었다. </td>
						<td colspan="2" class="check"><input type="radio" name="question_1_22" value="3"></td>
					</tr>
					<tr>
						<td colspan="4" class="text-c">
							<a href="#" onclick="getResult(1,22);return false;" class="btn color">결과보기</a>
							<a href="#" class="btn" onclick="resetResult(1,22);return false;">다시하기</a>
							<a href="#" id="submit1" class="btn color">결과저장</a>
							<div id="total_div" class="result">
								총점 : <span id="result1">0</span> 점
								<input type="hidden" name="m_id" value="1">
								<input type="hidden" name="category" value="1">
								<input type="hidden" name="t_score" id="t_score1" value="">
							</div>						
						</td>
					</tr>
					</tbody>
					</table>
					<p class="text-r">(Beck Depression Inventory : BDI)</p>
					
					<h5>채점기준</h5>
					<table class="tableData text-c">
					<caption>채점기준</caption>
					<colgroup><col width="50%"><col width="50%"></colgroup>
					<tbody>
					<tr>
						<th scope="row">0~9점</th>
						<td>비우울</td>
					</tr>
					<tr>
						<th scope="row">10~15점</th>
						<td>경한 우울증</td>
					</tr>
					<tr>
						<th scope="row">16~23점</th>
						<td>중증도 우울증</td>
					</tr>
					<tr>
						<th scope="row">24~63점</th>
						<td>중증 우울증</td>
					</tr>
					</tbody>
					</table>
					</form:form>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			<div id="tab2" class="tabcontent tab_content">
			<form:form commandName="selfModel" id="form2" action="selfWrite.do" enctype="multipart/form-data" method="post">
				<h4>성인불안</h4>
					<h5>척도</h5>
					<div class="lineBox">
						<p class="tit">지난 2주 동안 당신은 다음의 문제들로 인해서 얼마나 자주 방해를 받았습니까? <br />
						<span>(자신의 상태와 가장 근접하다고 생각하는 번호에 '체크' 해주세요.)</span></p>
					</div>
					
					<table class="tableData checkList">
					<caption>성인불안</caption>
					<colgroup><col width="10%"><col width="*"><col width="10.5%"><col width="10.5%"><col width="12.5%"><col width="10.5%"></colgroup>
					<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">문항</th>
						<th scope="col">전혀 방해 받지 않았다</br>(0점)</th>
						<th scope="col">며칠 동안 방해 받았다</br>(1점)</th>
						<th scope="col">2주 중 절반이상 방해 받았다</br>(2점)</th>
						<th scope="col">거의 매일 방해 받았다</br>(3점)</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row">1</th>
						<td>초초하거나 불안하거나 조마조마하게 느낀다.</td>
						<td class="check"><input type="radio" name="question_3_1" value="0"></td>
						<td class="check"><input type="radio" name="question_3_1" value="1"></td>
						<td class="check"><input type="radio" name="question_3_1" value="2"></td>
						<td class="check"><input type="radio" name="question_3_1" value="3"></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>걱정하는 것을 멈추거나 조절할 수가 없다.</td>
						<td class="check"><input type="radio" name="question_3_2" value="0"></td>
						<td class="check"><input type="radio" name="question_3_2" value="1"></td>
						<td class="check"><input type="radio" name="question_3_2" value="2"></td>
						<td class="check"><input type="radio" name="question_3_2" value="3"></td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>여러 가지 것들에 대해 걱정을 너무 많이 한다.</td>
						<td class="check"><input type="radio" name="question_3_3" value="0"></td>
						<td class="check"><input type="radio" name="question_3_3" value="1"></td>
						<td class="check"><input type="radio" name="question_3_3" value="2"></td>
						<td class="check"><input type="radio" name="question_3_3" value="3"></td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>편하게 있기가 어렵다.</td>
						<td class="check"><input type="radio" name="question_3_4" value="0"></td>
						<td class="check"><input type="radio" name="question_3_4" value="1"></td>
						<td class="check"><input type="radio" name="question_3_4" value="2"></td>
						<td class="check"><input type="radio" name="question_3_4" value="3"></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>너무 안절부절못해서 가만히 있기가 힘들다.</td>
						<td class="check"><input type="radio" name="question_3_5" value="0"></td>
						<td class="check"><input type="radio" name="question_3_5" value="1"></td>
						<td class="check"><input type="radio" name="question_3_5" value="2"></td>
						<td class="check"><input type="radio" name="question_3_5" value="3"></td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>쉽게 짜증이 나거나 쉽게 성을 내게 된다.</td>
						<td class="check"><input type="radio" name="question_3_6" value="0"></td>
						<td class="check"><input type="radio" name="question_3_6" value="1"></td>
						<td class="check"><input type="radio" name="question_3_6" value="2"></td>
						<td class="check"><input type="radio" name="question_3_6" value="3"></td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>마치 끔찍한 일이 생길 것처럼 두렵게 느껴진다.</td>
						<td class="check"><input type="radio" name="question_3_7" value="0"></td>
						<td class="check"><input type="radio" name="question_3_7" value="1"></td>
						<td class="check"><input type="radio" name="question_3_7" value="2"></td>
						<td class="check"><input type="radio" name="question_3_7" value="3"></td>
					</tr>
					<tr>
						<td colspan="6" class="text-c">
							<a href="#" onclick="getResult(3,7);return false;" class="btn color">결과보기</a>
							<a href="#" class="btn" onclick="resetResult(3,7);return false;">다시하기</a>
							<a href="#" id="submit2" class="btn color">결과저장</a>
							<div id="total_div" class="result">
								총점 : <span id="result3">0</span> 점
								<input type="hidden" name="m_id" value="1">
								<input type="hidden" name="category" value="2">
								<input type="hidden" name="t_score" id="t_score3" value="">
							</div>
						</td>
					</tr>
					</tbody>
					</table> 
					<p class="text-r">(PHQ의 Generalized anxiety disorder 7-item scale)</p>
					
					<h5>채점기준</h5>
					<table class="tableData text-c">
					<caption>채점기준</caption>
					<colgroup><col width="50%"><col width="50%"></colgroup>
					<tbody>
					<tr>
						<th scope="row">5~9점</th>
						<td>스스로 불안을 조절하거나 극복하기 위한 노력이 필요함</td>
					</tr>
					<tr>
						<th scope="row">10~14점</th>
						<td>불안이 중간정도 이상에 해당</td>
					</tr>
					<tr>
						<th scope="row">15점 이상</th>
						<td>심한 불안이 있는 것을 나타냄</td>
					</tr>
					<tr>
						<th scope="row">8 10점 이상</th>
						<td>불안에 대한 자세한 검사와 전문가와 상의하는 것이 권장됨</td>
					</tr>
					</tbody>
					</table>
					</form:form>
			</div>
			
			
			
			
			
			
			
			
			
			<div id="tab3" class="tabcontent tab_content">
			<form:form commandName="selfModel" id="form3" action="selfWrite.do" enctype="multipart/form-data" method="post">
				<h4>스트레스 자가 진단</h4>
					<h5>척도</h5>
					<div class="lineBox">
						<p class="tit mb-10">아래 문항을 자세히 읽어 보신 후,<br />
						최근 보름동안 자신의 상태와 가장 근접하다고 생각하는 번호에 체크를 해주세요.</p>
						<ul class="col3">
							<li>ⓐ 전혀 없었다</li>
							<li>ⓑ 가끔 있었다</li>
							<li>ⓒ 자주 있었다</li>
						</ul>
					</div>
					
					<table class="tableData checkList">
					<caption>성인불안</caption>
					<colgroup><col width="10%"><col width="*"><col width="10%"><col width="10%"><col width="10%"></colgroup>
					<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">평가내용</th>
						<th scope="col">ⓐ</th>
						<th scope="col">ⓑ</th>
						<th scope="col">ⓒ</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row">1</th>
						<td>아침에 눈 뜨는 게 두려운 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_1" value="0"></td>
						<td class="check"><input type="radio" name="question_4_1" value="1"></td>
						<td class="check"><input type="radio" name="question_4_1" value="2"></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>잠을 잘 못 들거나 깊은 잠을 못 자고 자주 잠에서 깬다.</td>
						<td class="check"><input type="radio" name="question_4_2" value="0"></td>
						<td class="check"><input type="radio" name="question_4_2" value="1"></td>
						<td class="check"><input type="radio" name="question_4_2" value="2"></td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>늘 쫓기는 느낌이 든다.</td>
						<td class="check"><input type="radio" name="question_4_3" value="0"></td>
						<td class="check"><input type="radio" name="question_4_3" value="1"></td>
						<td class="check"><input type="radio" name="question_4_3" value="2"></td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>식욕이 없어 잘 안 먹거나 갑자기 폭식을 한다.</td>
						<td class="check"><input type="radio" name="question_4_4" value="0"></td>
						<td class="check"><input type="radio" name="question_4_4" value="1"></td>
						<td class="check"><input type="radio" name="question_4_4" value="2"></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>매사에 집중이 안되고 일의 능률이 떨어진다.</td>
						<td class="check"><input type="radio" name="question_4_5" value="0"></td>
						<td class="check"><input type="radio" name="question_4_5" value="1"></td>
						<td class="check"><input type="radio" name="question_4_5" value="2"></td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>기억력이 나빠져 잘 잊어버린다.</td>
						<td class="check"><input type="radio" name="question_4_6" value="0"></td>
						<td class="check"><input type="radio" name="question_4_6" value="1"></td>
						<td class="check"><input type="radio" name="question_4_6" value="2"></td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>텔레파시, 육감, 사주를 믿는다.</td>
						<td class="check"><input type="radio" name="question_4_7" value="0"></td>
						<td class="check"><input type="radio" name="question_4_7" value="1"></td>
						<td class="check"><input type="radio" name="question_4_7" value="2"></td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>만사가 귀찮고 피로감을 자주 느낀다.</td>
						<td class="check"><input type="radio" name="question_4_8" value="0"></td>
						<td class="check"><input type="radio" name="question_4_8" value="1"></td>
						<td class="check"><input type="radio" name="question_4_8" value="2"></td>
					</tr>
					<tr>
						<th scope="row">9</th>
						<td>나에 대한 안 좋은 뜬소문에 시달린 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_9" value="0"></td>
						<td class="check"><input type="radio" name="question_4_9" value="1"></td>
						<td class="check"><input type="radio" name="question_4_9" value="2"></td>
					</tr>
					<tr>
						<th scope="row">10</th>
						<td>말과 행동이 거칠어졌다.</td>
						<td class="check"><input type="radio" name="question_4_10" value="0"></td>
						<td class="check"><input type="radio" name="question_4_10" value="1"></td>
						<td class="check"><input type="radio" name="question_4_10" value="2"></td>
					</tr>
					<tr>
						<th scope="row">11</th>
						<td>느닷없이 화가 치밀어 오르는 때가 있다.</td>
						<td class="check"><input type="radio" name="question_4_11" value="0"></td>
						<td class="check"><input type="radio" name="question_4_11" value="1"></td>
						<td class="check"><input type="radio" name="question_4_11" value="2"></td>
					</tr>
					<tr>
						<th scope="row">12</th>
						<td>남들과 터놓고 속 얘기하기를 꺼린다.</td>
						<td class="check"><input type="radio" name="question_4_12" value="0"></td>
						<td class="check"><input type="radio" name="question_4_12" value="1"></td>
						<td class="check"><input type="radio" name="question_4_12" value="2"></td>
					</tr>
					<tr>
						<th scope="row">13</th>
						<td>귀가 얇은 편이다.</td>
						<td class="check"><input type="radio" name="question_4_13" value="0"></td>
						<td class="check"><input type="radio" name="question_4_13" value="1"></td>
						<td class="check"><input type="radio" name="question_4_13" value="2"></td>
					</tr>
					<tr>
						<th scope="row">14</th>
						<td>집안 식구들로부터 가정에 소홀하다는 이야기를 들었다.</td>
						<td class="check"><input type="radio" name="question_4_14" value="0"></td>
						<td class="check"><input type="radio" name="question_4_14" value="1"></td>
						<td class="check"><input type="radio" name="question_4_14" value="2"></td>
					</tr>
					<tr>
						<th scope="row">15</th>
						<td>내 일이 지겹게 느껴진다.</td>
						<td class="check"><input type="radio" name="question_4_15" value="0"></td>
						<td class="check"><input type="radio" name="question_4_15" value="1"></td>
						<td class="check"><input type="radio" name="question_4_15" value="2"></td>
					</tr>
					<tr>
						<th scope="row">16</th>
						<td>동료가 제멋대로 행동한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_16" value="0"></td>
						<td class="check"><input type="radio" name="question_4_16" value="1"></td>
						<td class="check"><input type="radio" name="question_4_16" value="2"></td>
					</tr>
					<tr>
						<th scope="row">17</th>
						<td>납득할 수 없는 요구 때문에 골치가 아팠다.</td>
						<td class="check"><input type="radio" name="question_4_17" value="0"></td>
						<td class="check"><input type="radio" name="question_4_17" value="1"></td>
						<td class="check"><input type="radio" name="question_4_17" value="2"></td>
					</tr>
					<tr>
						<th scope="row">18</th>
						<td>업무 중에 도망가고 싶은 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_18" value="0"></td>
						<td class="check"><input type="radio" name="question_4_18" value="1"></td>
						<td class="check"><input type="radio" name="question_4_18" value="2"></td>
					</tr>
					<tr>
						<th scope="row">19</th>
						<td>시간 약속 때문에 압박감을 느껴본 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_19" value="0"></td>
						<td class="check"><input type="radio" name="question_4_19" value="1"></td>
						<td class="check"><input type="radio" name="question_4_19" value="2"></td>
					</tr>
					<tr>
						<th scope="row">20</th>
						<td>리액션이 과하다는 말을 종종 듣는다.</td>
						<td class="check"><input type="radio" name="question_4_20" value="0"></td>
						<td class="check"><input type="radio" name="question_4_20" value="1"></td>
						<td class="check"><input type="radio" name="question_4_20" value="2"></td>
					</tr>
						<th scope="row">21</th>
						<td>생각이 많아 일이 늦어진다.</td>
						<td class="check"><input type="radio" name="question_4_21" value="0"></td>
						<td class="check"><input type="radio" name="question_4_21" value="1"></td>
						<td class="check"><input type="radio" name="question_4_21" value="2"></td>
					</tr>
					<tr>
						<th scope="row">22</th>
						<td>나는 남들보다 특별했으면 좋겠다.</td>
						<td class="check"><input type="radio" name="question_4_22" value="0"></td>
						<td class="check"><input type="radio" name="question_4_22" value="1"></td>
						<td class="check"><input type="radio" name="question_4_22" value="2"></td>
					</tr>
					<tr>
						<th scope="row">23</th>
						<td>쉽게 부끄러워하고 반응에 몹시 민감하다.</td>
						<td class="check"><input type="radio" name="question_4_23" value="0"></td>
						<td class="check"><input type="radio" name="question_4_23" value="1"></td>
						<td class="check"><input type="radio" name="question_4_23" value="2"></td>
					</tr>
					<tr>
						<th scope="row">24</th>
						<td>동료와 말다툼을 한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_24" value="0"></td>
						<td class="check"><input type="radio" name="question_4_24" value="1"></td>
						<td class="check"><input type="radio" name="question_4_24" value="2"></td>
					</tr>
					<tr>
						<th scope="row">25</th>
						<td>내 의지와는 전혀 상관없는 일을 한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_25" value="0"></td>
						<td class="check"><input type="radio" name="question_4_25" value="1"></td>
						<td class="check"><input type="radio" name="question_4_25" value="2"></td>
					</tr>
					<tr>
						<th scope="row">26</th>
						<td>나의 의견이 무시당한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_26" value="0"></td>
						<td class="check"><input type="radio" name="question_4_26" value="1"></td>
						<td class="check"><input type="radio" name="question_4_26" value="2"></td>
					</tr>
					<tr>
						<th scope="row">27</th>
						<td>이직을 생각한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_27" value="0"></td>
						<td class="check"><input type="radio" name="question_4_27" value="1"></td>
						<td class="check"><input type="radio" name="question_4_27" value="2"></td>
					</tr>
					<tr>
						<th scope="row">28</th>
						<td>아무런 이유 없이 나를 괴롭히는 사람이 있다.</td>
						<td class="check"><input type="radio" name="question_4_28" value="0"></td>
						<td class="check"><input type="radio" name="question_4_28" value="1"></td>
						<td class="check"><input type="radio" name="question_4_28" value="2"></td>
					</tr>
					<tr>
						<th scope="row">29</th>
						<td>공개적으로 혼난 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_29" value="0"></td>
						<td class="check"><input type="radio" name="question_4_29" value="1"></td>
						<td class="check"><input type="radio" name="question_4_29" value="2"></td>
					</tr>
					<tr>
						<th scope="row">30</th>
						<td>일의 분배가 불공정하게 이루어진다고 생각한 적이 있다.</td>
						<td class="check"><input type="radio" name="question_4_30" value="0"></td>
						<td class="check"><input type="radio" name="question_4_30" value="1"></td>
						<td class="check"><input type="radio" name="question_4_30" value="2"></td>
					</tr>
					<tr>
						<td colspan="5" class="text-c">
							<a href="#" onclick="getResult(4,30);return false;" class="btn color">결과보기</a>
							<a href="#" class="btn" onclick="resetResult(4,30);return false;">다시하기</a>
							<a href="#" id="submit3" class="btn color">결과저장</a>
							<div id="total_div" class="result">
								총점 : <span id="result4">0</span> 점
								<input type="hidden" name="m_id" value="1">
								<input type="hidden" name="category" value="3">
								<input type="hidden" name="t_score" id="t_score4" value="">
							</div>
						</td>
					</tr>
					</tbody>
					</table> 
					<p class="text-r">(근로복지공단 기준 참고)</p>
					
					<h5>채점기준</h5>
					<div class="lineBox">
						<ul class="col3">
							<li>ⓐ 전혀 없었다 : 0점</li>
							<li>ⓑ 가끔 있었다 : 1점</li>
							<li>ⓒ 자주 있었다 : 2점</li>
						</ul>
					</div>
					<table class="tableData text-c">
					<caption>채점기준</caption>
					<colgroup><col width="50%"><col width="50%"></colgroup>
					<tbody>
					<tr>
						<th scope="row">0~10점</th>
						<td>현재 특별한 정서적 불편을 느끼지 않는 상태</td>
					</tr>
					<tr>
						<th scope="row">16~25점</th>
						<td>약간의 스트레스가 의심되며 예방책이 필요함</td>
					</tr>
					<tr>
						<th scope="row">26~40점</th>
						<td>중등도의 스트레스가 있으며 적극적인 도움을 받아야 함</td>
					</tr>
					<tr>
						<th scope="row">41~60점</th>
						<td>고도의 스트레스로 인해 반드시 전문적인 치료를 요함</td>
					</tr>
					</tbody>
					</table>
					</form:form>
			</div>
			
			
			
			
			
			
			

			<div id="tab4" class="tabcontent tab_content">
			<form:form commandName="selfModel" id="form4" action="selfWrite.do" enctype="multipart/form-data" method="post">
				<h4 class=" mt-40">분노조절 자가진단</h4>
					<h5>척도</h5>
					<div class="lineBox">
						<p class="tit mb-10">아래 문항을 자세히 읽어 보신 후,<br />
						최근 보름동안 자신의 상태와 가장 근접하다고 생각하는 번호에 체크를 해주세요.</p>
						<ul class="col3">
							<li>ⓐ 전혀 없었다</li>
							<li>ⓑ 가끔 있었다</li>
							<li>ⓒ 자주 있었다</li>
						</ul>
					</div>
					
					<table class="tableData checkList">
					<caption>분노조절</caption>
					<colgroup><col width="10%"><col width="*"><col width="10%"><col width="10%"><col width="10%"></colgroup>
					<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">평가내용</th>
						<th scope="col">ⓐ</th>
						<th scope="col">ⓑ</th>
						<th scope="col">ⓒ</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row">1</th>
						<td>나는 다른 사람들과 자주 싸운다.</td>
						<td class="check"><input type="radio" name="question_5_1" value="0"></td>
						<td class="check"><input type="radio" name="question_5_1" value="1"></td>
						<td class="check"><input type="radio" name="question_5_1" value="2"></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>나는 때때로 다른 사람을 해치고 싶은 충동을 강하게 느낀다.</td>
						<td class="check"><input type="radio" name="question_5_2" value="0"></td>
						<td class="check"><input type="radio" name="question_5_2" value="1"></td>
						<td class="check"><input type="radio" name="question_5_2" value="2"></td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>나는 상대방과 다른 의견이 있을 때 상대방의 입장을 고려하지 않고 나의 입장을 말한다.</td>
						<td class="check"><input type="radio" name="question_5_3" value="0"></td>
						<td class="check"><input type="radio" name="question_5_3" value="1"></td>
						<td class="check"><input type="radio" name="question_5_3" value="2"></td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>내가 싫어하는 사람에게는 무례한 행동을 한다.</td>
						<td class="check"><input type="radio" name="question_5_4" value="0"></td>
						<td class="check"><input type="radio" name="question_5_4" value="1"></td>
						<td class="check"><input type="radio" name="question_5_4" value="2"></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>나는 어떤 상황에서든지 다른 사람을 때려서는 안 된다고 생각한다.</td>
						<td class="check"><input type="radio" name="question_5_5" value="0"></td>
						<td class="check"><input type="radio" name="question_5_5" value="1"></td>
						<td class="check"><input type="radio" name="question_5_5" value="2"></td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>누가 먼저 나를 때린다면 나도 그 사람을 때리겠다.</td>
						<td class="check"><input type="radio" name="question_5_6" value="0"></td>
						<td class="check"><input type="radio" name="question_5_6" value="1"></td>
						<td class="check"><input type="radio" name="question_5_6" value="2"></td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>계속해서 나를 괴롭히는 사람은 나한테 한 대 얻어맞기를 자청하는 셈이다.</td>
						<td class="check"><input type="radio" name="question_5_7" value="0"></td>
						<td class="check"><input type="radio" name="question_5_7" value="1"></td>
						<td class="check"><input type="radio" name="question_5_7" value="2"></td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>나를 궁지에 빠뜨린 사람을 알면 그 사람과 싸운다.</td>
						<td class="check"><input type="radio" name="question_5_8" value="0"></td>
						<td class="check"><input type="radio" name="question_5_8" value="1"></td>
						<td class="check"><input type="radio" name="question_5_8" value="2"></td>
					</tr>
					<tr>
						<th scope="row">9</th>
						<td>누가 나를 때린다 하더라도 좀처럼 맞서서 같이 때리지 않는다. </td>
						<td class="check"><input type="radio" name="question_5_9" value="0"></td>
						<td class="check"><input type="radio" name="question_5_9" value="1"></td>
						<td class="check"><input type="radio" name="question_5_9" value="2"></td>
					</tr>
					<tr>
						<th scope="row">10</th>
						<td>나는 때때로 싫어하는 사람 앞에서 그 사람의 험담을 늘어놓는다.</td>
						<td class="check"><input type="radio" name="question_5_10" value="0"></td>
						<td class="check"><input type="radio" name="question_5_10" value="1"></td>
						<td class="check"><input type="radio" name="question_5_10" value="2"></td>
					</tr>
					<tr>
						<th scope="row">11</th>
						<td>사람들이 내 말에 동의하지 않을 때는 논쟁하는 것이 당연하다.</td>
						<td class="check"><input type="radio" name="question_5_11" value="0"></td>
						<td class="check"><input type="radio" name="question_5_11" value="1"></td>
						<td class="check"><input type="radio" name="question_5_11" value="2"></td>
					</tr>
					<tr>
						<th scope="row">12</th>
						<td>사람들이 내게 호통을 칠 때 나도 이에 맞서서 호통을 친다.</td>
						<td class="check"><input type="radio" name="question_5_12" value="0"></td>
						<td class="check"><input type="radio" name="question_5_12" value="1"></td>
						<td class="check"><input type="radio" name="question_5_12" value="2"></td>
					</tr>
					<tr>
						<th scope="row">13</th>
						<td>내가 다른 사람들에 대해 좋지 않게 생각하는 나의 견해를 보통 내색하지 않는다.</td>
						<td class="check"><input type="radio" name="question_5_13" value="0"></td>
						<td class="check"><input type="radio" name="question_5_13" value="1"></td>
						<td class="check"><input type="radio" name="question_5_13" value="2"></td>
					</tr>
					<tr>
						<th scope="row">14</th>
						<td>나는 상대방과 의견이 다를 때 논쟁하기 보다는 차라리 상대편의 의견에 따른다.</td>
						<td class="check"><input type="radio" name="question_5_14" value="0"></td>
						<td class="check"><input type="radio" name="question_5_14" value="1"></td>
						<td class="check"><input type="radio" name="question_5_14" value="2"></td>
					</tr>
					<tr>
						<th scope="row">15</th>
						<td>나는 매우 흥분했을 때 누군가를 때릴 수 있다.</td>
						<td class="check"><input type="radio" name="question_5_15" value="0"></td>
						<td class="check"><input type="radio" name="question_5_15" value="1"></td>
						<td class="check"><input type="radio" name="question_5_15" value="2"></td>
					</tr>
					<tr>
						<th scope="row">16</th>
						<td>나는 때때로 상대방에게 시비 거는 것처럼 행동한다.</td>
						<td class="check"><input type="radio" name="question_5_16" value="0"></td>
						<td class="check"><input type="radio" name="question_5_16" value="1"></td>
						<td class="check"><input type="radio" name="question_5_16" value="2"></td>
					</tr>
					<tr>
						<th scope="row">17</th>
						<td>나는 괘씸한 사람을 혼내주고 싶어도 차마 그의 자존심을 상하게 할 수 없다.</td>
						<td class="check"><input type="radio" name="question_5_17" value="0"></td>
						<td class="check"><input type="radio" name="question_5_17" value="1"></td>
						<td class="check"><input type="radio" name="question_5_17" value="2"></td>
					</tr>
					<tr>
						<th scope="row">18</th>
						<td>나는 아무리 화가 나도 물건을 던지는 행동은 안한다.</td>
						<td class="check"><input type="radio" name="question_5_18" value="0"></td>
						<td class="check"><input type="radio" name="question_5_18" value="1"></td>
						<td class="check"><input type="radio" name="question_5_18" value="2"></td>
					</tr>
					<tr>
						<th scope="row">19</th>
						<td>나는 논쟁할 때면 언성을 높이는 경향이 있다.</td>
						<td class="check"><input type="radio" name="question_5_19" value="0"></td>
						<td class="check"><input type="radio" name="question_5_19" value="1"></td>
						<td class="check"><input type="radio" name="question_5_19" value="2"></td>
					</tr>
					<tr>
						<th scope="row">20</th>
						<td>나는 자주 거짓 협박을 한다.</td>
						<td class="check"><input type="radio" name="question_5_20" value="0"></td>
						<td class="check"><input type="radio" name="question_5_20" value="1"></td>
						<td class="check"><input type="radio" name="question_5_20" value="2"></td>
					</tr>
						<th scope="row">21</th>
						<td>나의 권리를 지키기 위해 필요하다면 폭력도 쓰겠다.</td>
						<td class="check"><input type="radio" name="question_5_21" value="0"></td>
						<td class="check"><input type="radio" name="question_5_21" value="1"></td>
						<td class="check"><input type="radio" name="question_5_21" value="2"></td>
					</tr>
					<tr>
						<td colspan="5" class="text-c">
							<a href="#" onclick="getResult(5,21);return false;" class="btn color">결과보기</a>
							<a href="#" class="btn" onclick="resetResult(5,21);return false;">다시하기</a>
							<a href="#" id="submit4" class="btn color">결과저장</a>
							<div id="total_div" class="result">
								총점 : <span id="result5">0</span> 점
								<input type="hidden" name="m_id" value="1">
								<input type="hidden" name="category" value="4">
								<input type="hidden" name="t_score" id="t_score5" value="">
							</div>
						</td>
					</tr> 
					</tbody>
					</table>
					
					<h5 class="mt-20">채점기준</h5>
					<table class="tableData text-c">
					<caption>채점기준</caption>
					<colgroup><col width="50%"><col width="50%"></colgroup>
					<tbody>
					<tr>
						<th scope="row">55점 이하</th>
						<td>정상입니다.</td>
					</tr>
					<tr>
						<th scope="row">54~58점</th>
						<td>공격적인 성향이 다소 있는 것 같습니다.<br />힘들다고 생각하면 전문가에게 도움을 요청할 수 있습니다.</td>
					</tr>
					<tr>
						<th scope="row">59~61점</th>
						<td>공격적인 성향이 상당히 있는 것 같습니다.<br />전문가에게 도움을 요청하십시오.</td>
					</tr>
					<tr>
						<th scope="row">62점 이상</th>
						<td>공격적 성향이 매우 높은 것 같습니다.<br />속히 전문가에게 치료를 받으시는 것이 좋겠습니다.</td>
					</tbody>
					</table>
					</form:form>
			</div>


		</div>
	</div>
</body>
