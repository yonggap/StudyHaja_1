<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<link rel="stylesheet" type="text/css" href="jaewoong/css1/moonCss2.css" />

<script src="jaewoong/js1/select_Js.js"></script>
<!-- <link rel="stylesheet" href="jaewoong/css/bootstrap.css"> -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
 <script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
 <script src="jaewoong/js1/jquery.bpopup.min.js"></script>

<script src="jaewoong/js/bootstrap.js"></script>

<script type="text/javascript">



 $(function(){
		 
	 
	 
	 var checkedValues = [];  
	 var selValue = null;
	 var content = null;
	 var subSearch = null;
	 var tdText = null;
	 
	 
	 
	 $("#sendBtn").click(function(){
		var replyContent = $("#replyContent").val();
		
		$(".replyUl").empty();
		$.ajax(
				{
 					type:"post",
 					url:"./searchPageServlet",
 					data:{"replyContent":replyContent,
 						"tdText":tdText
 					},
 					
 					success:function(data){
 						var res = eval("("+data+")");
 						var result = res.result;
 						
 						alert(data);
 						for(var i=0;i<result.length;i++){
	
 							$(".replyUl").append('<li class="replyLi"><span class="replyContent"><span class="replyName">'+result[i][0].value+'<span class="replyDate"></span></span><span class="replyContent">'+result[i][1].value+'</span></span></li>');
 						}
 						
 						
 					},
 					error : function(msg, error) {
 						alert(error);
 					}
 					
 				}	
		)
		
	 });
	 
	 $("#searchBtn").click(function(){
		 
		 content =  $("#subject").val();
	     subSearch = $(".subSearch option:checked").text();
	    	$("#tableAjax > tbody").empty();
	    	$.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{"subject":content,
	 						"subSearch":subSearch,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						
		 						for(var i=0;i<dd.length;i++){
		 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
		 							for(var j=0;j<dd[i].length;j++){
		 								
		 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
		 							}
		 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
		 						}		
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    	
	    });
	 
	 	$("input[id=allChkOne]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=oneChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkTwo]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=twoChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkThree]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=thrChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkFour]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=fouChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkFive]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=fivChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkSix]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=sixChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkSeven]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=sevChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 	$("input[id=allChkEight]").click(function(){
	 		var i;
	 		$("#tableAjax > tbody").empty();
	 		if($(this).is(":checked")){
	 		$("input[name=eigChk]").each(function(){
			    checkedValues.push($(this).val());	
			 });
	 		}else {
	 			 for(i = 0;i<checkedValues.length;i++){
    				
		    			 checkedValues.splice(i,checkedValues.length);
    				 
    			 } 
	 		}
	 	});
	 
	    $("input[name=oneChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;
				
	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	    		 
	    		 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						alert(data);
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							
	 							for(var j=0;j<dd[i].length;j++){
	 								if(j == dd[i].length-1){
	 									
	 										if(dd[i][j].value==0){
	 											dd[i][j].value=0;
	 										}else {
	 										$(".subjectTd"+i).append('<span>['+dd[i][j].value+']</span>');
	 										}
	 									
	 								}else{ 
		 								 if(j==2){
		 									$("#ajaxTable").append('<td class="subjectTd'+i+'">'+dd[i][j].value+'</td>');
		 								 }else if(j==1){ 
		 									$("#ajaxTable").append('<td class="tdNum">'+dd[i][j].value+'</td>');


		 								 }else {
			 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');		 									 
		 								 } 
	 								 } 
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=twoChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=thrChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=fouChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=fivChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=sixChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=sevChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 
	    $("input[name=eigChk]").click(function(){
    	
	    	$("#tableAjax > tbody").empty();
	    		var i;

	    		 if($(this).is(":checked")){
	    			 checkedValues.push($(this).val());	 
	    		 }else {
	    			 for(i = 0;i<checkedValues.length;i++){
	    				 if(checkedValues[i]==$(this).val()){
			    			 checkedValues.splice(i,1);
	    				 }
	    			 } 
	    		 } 
	  	   jQuery.ajaxSettings.traditional = true;
	  	   
	 	    $.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"check":checkedValues,
	 					},
	 					
	 					success:function(data){
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}		
	 						/*페이징처리 끝  */
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    }); 

	    $(document).on("click","#record",function(){
	    	var tr = $(this);
	    	var td = tr.children();
	    	tdText = td.eq(0).text();
	    	$("pophead").empty();
	    	$("#popcontent").empty();
	    	$(".replyUl").empty();
				
	    	$.ajax(
	    			
	    			{
	    				type:"post",
	 					url:"./searchPageServlet",
	 					data:{"td":tdText,		
	 					},
	    				
	 						success:function(data){
	 							alert(data);
	 							var d = eval("("+data+")");
		 						var dd = d.result;
		 						
		 						var aa = d.tdText;
		 						
		 						for(var i=0;i<aa.length;i++){
		 							
		 							$(".replyUl").append('<li class="replyLi"><span class="replyContent"><span class="replyName">'+aa[i][0].value+'<span class="replyDate"></span></span><span class="replyContent">'+aa[i][1].value+'</span></span></li>');
		 						}
		 						
	 							$("#jae").text(dd[0][0].value);
	 							$("#bun").text(dd[0][1].value);
	 							$("#s_d").text(dd[0][2].value);
	 							$("#e_d").text(dd[0][3].value);
	 							$("#yo").text(dd[0][4].value);
	 							$("#s_h").text(dd[0][5].value);
	 							$("#s_m").text(dd[0][6].value);
	 							$("#e_h").text(dd[0][7].value);
	 							$("#e_m").text(dd[0][8].value);
	 							$("#pOne").text(dd[0][9].value);
	 							$("#pTwo").text(dd[0][10].value);
	 							$("#pThr").text(dd[0][11].value);
	 							$("#inWon").text(dd[0][12].value);
	 							$("#cury").text(dd[0][13].value);
	 							
	 							$("#popup").bPopup({
	 								
	 					    		modalClose:true,
	 					    		follow: [false,false],
	 					    		position:[600,800]
	 					    	});
	 							
		 					},
		 					error : function(msg, error) {
		 						alert(error);
		 					}
	    			
	    			
	    			}
	    		)	

	    });
	    
	    $("#subSel").on('change',function(){
	    	selValue = $("#subSel option:checked").text();
			
	    	
	    	$.ajax(
	 				{
	 					type:"post",
	 					url:"./searchPageServlet",
	 					data:{
	 						"selValue":selValue,		
	 					},
	 					
	 					success:function(data){
	 						$("#tableAjax > tbody").empty();
	 						var d = eval("("+data+")");
	 						var dd = d.result;
	 						/*페이징 처리  */
	 						for(var i=0;i<dd.length;i++){
	 							/* $("#ajaxTable").append('<tr style="cursor:pointer;" id="record'+i+'" onclick="layer_open();return false">'); */
	 							for(var j=0;j<dd[i].length;j++){
	 								
	 								$("#ajaxTable").append('<td>'+dd[i][j].value+'</td>');
	 								
	 							}
	 							$("#ajaxTable>td").wrapAll('<tr style="cursor:pointer;" id="record"></tr>');
	 						}	
	 						
	 					},
	 					error : function(msg, error) {
	 						alert(error);
	 					}
	 					
	 				}		
	 			)
	    	
	    	
	    });
	    
	    
	   
	    
});


/*------------------------------------------------*/
	
</script>
<script>
	$(function(){
		$("#findjob").click(function(){
			/*클릭시 닫아주기  */
			
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			/*  */
			
			if($(".detail").is(":hidden")){
			$(".detail").slideDown("fast");
			} else {
				$(".detail").slideUp("fast");
			}
		});
		
		$("#language").click(function(){
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			
			 if($(".detail2").is(":hidden")){
				$(".detail2").slideDown("fast");
				}else {
				$(".detail2").slideUp("fast");
				}
		});
		
		$("#bank").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			
			 if($(".detail3").is(":hidden")){
				$(".detail3").slideDown("fast");
				}else {
				$(".detail3").slideUp("fast");
				}
		});
		
		$("#programing").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			
			 if($(".detail4").is(":hidden")){
				$(".detail4").slideDown("fast");
				}else {
				$(".detail4").slideUp("fast");
				}
		});
		$("#selfdevelop").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			
			 if($(".detail5").is(":hidden")){
				$(".detail5").slideDown("fast");
				}else {
				$(".detail5").slideUp("fast");
				}
		});
		
		$("#hobby").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}
			
			
			 if($(".detail6").is(":hidden")){
				$(".detail6").slideDown("fast");
				}else {
				$(".detail6").slideUp("fast");
				}
		});
		$("#gosi").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail8").is(":visible")){
				$(".detail8").slideUp("fast");
			}			
			
			 if($(".detail7").is(":hidden")){
				$(".detail7").slideDown("fast");
				}else {
				$(".detail7").slideUp("fast");
				}
		});
		$("#etc").click(function(){
			
			if($(".detail").is(":visible")){
				$(".detail").slideUp("fast");
			}
			if($(".detail2").is(":visible")){
				$(".detail2").slideUp("fast");
			}
			if($(".detail3").is(":visible")){
				$(".detail3").slideUp("fast");
			}
			if($(".detail4").is(":visible")){
				$(".detail4").slideUp("fast");
			}
			if($(".detail5").is(":visible")){
				$(".detail5").slideUp("fast");
			}
			if($(".detail6").is(":visible")){
				$(".detail6").slideUp("fast");
			}
			if($(".detail7").is(":visible")){
				$(".detail7").slideUp("fast");
			}
			
			
			 if($(".detail8").is(":hidden")){
				$(".detail8").slideDown("fast");
				}else {
				$(".detail8").slideUp("fast");
				}
		});
		
		
		
		
		$("#allChkOne").click(function(){
			if($("#allChkOne").prop('checked')){
			$("input[name='oneChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='oneChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkTwo").click(function(){
			if($("#allChkTwo").prop('checked')){
			$("input[name='twoChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='twoChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkThree").click(function(){
			if($("#allChkThree").prop('checked')){
			$("input[name='thrChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='thrChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkFour").click(function(){
			if($("#allChkFour").prop('checked')){
			$("input[name='fouChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='fouChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkFive").click(function(){
			if($("#allChkFive").prop('checked')){
			$("input[name='fivChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='fivChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkSixx").click(function(){
			if($("#allChkSix").prop('checked')){
			$("input[name='sixChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='sixChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkSeven").click(function(){
			if($("#allChkSeven").prop('checked')){
			$("input[name='sevChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='sevChk']:checkbox").prop("checked",false);
			}
		});
		$("#allChkEight").click(function(){
			if($("#allChkEight").prop('checked')){
			$("input[name='eigChk']:checkbox").prop("checked",true);
			} else {
				$("input[name='eigChk']:checkbox").prop("checked",false);
			}
		});
		
	});
	
</script>

<style type="text/css">

.popupInnerContent{
	position: relative;
    padding: 27px 20px;
}


.popupInner{
	margin-top: -1px;
    width: 550px;
    border: 1px solid #8a8a8a;
}

	.introduce_title{
	padding-right: 13px;
    color: #2695f1;
	
}

.tree_reple_place {
	    padding: 0;
    text-align: left;
      position: relative;
	
}
.tree_reple_place>div>div {
		padding-top: 30px;
	    float: left;
		padding-right:13px;
}

.input-text {
		width: 315px;
    	border: 1px solid #05a2da;
		display: inline-block;
	    padding: 5px 10px;
	    height: 30px;
	    line-height: 20px;
	    font-size: 13px;
	    color: #5e5e5e;
}

.repleBtn{
	padding: 9px 9px 6px 15px;
    background-color: #05a2da;
    border: 1px solid #0482af;
    color: #fff;
    width: 70px;
	
}

	#contentTable {
		cellspacing:50;
		text-align:left;	
	}
	#contentTable td{
		cellspacing: 10;
		cellpadding: 10;
	}

	.popupDIV {
	position: absolute;
    padding: 30px;
    background-color: #fff;
    border: 4px solid #00c6ff;
	
	display: none; 
	}
	/* #pophead{
	width:100px;
	} */
	#pophead ol{
	width : 100px;
	}
	/* #popcontent{
	width:200px;
	} */
	#popcontent ol{
	width : 300px;
	}
	
	#replyList{
		overflow:scroll; 
		 height:300px;
	}
	
	.replyLi{
		position: relative;
	    overflow: hidden;
	    padding: 15px 0;
	    border-bottom: 1px solid #c7c7c7;
	}
</style>
</head>
<body>
	<div>
		<div>
			<div class="" align="center" >
		
				<div class="tableDIV" style="text-align:left" >
				<h2>카테고리별 검색</h2>
				<hr>
				<table class="categoryOne">
					<tr>
					<td id="a_tag">		
						<a href="#" class="button" id="findjob">취업</a>
					</td>
						
					<td id="a_tag">	
					<a href="#" class="button" id="language">어학</a>
						
					</td>
					
					<td id="a_tag">	
					<a href="#" class="button" id="bank">금융</a>
					
					</td>
					
					<td id="a_tag">	
					<a href="#" class="button" id="programing">프로그래밍</a>
					
					</td>
					
					<td id="a_tag">	
					<a href="#" class="button" id="selfdevelop">자기계발</a>
					
					</td>
					</tr>
					<tr>
						<td colspan="5">
							<div class="detail">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkOne" name="oneChk"/></td>
								<td>토익 <input type="checkbox" id ="oneChk" name="oneChk" value="토익"/></td>
								<td>토익스피킹 <input type="checkbox" id ="oneChk" name = "oneChk" value="토익스피킹"/></td>
								<td>오픽 <input type="checkbox" id ="oneChk" name="oneChk" value="오픽"/></td>
								<td>텝스 <input type="checkbox" id ="oneChk" name = "oneChk" value="텝스"/></td>
								<td>인적성 <input type="checkbox" id ="oneChk" name="oneChk" value="인적성"/></td>
							</tr>
							<tr>
								<td>면접 <input type="checkbox" id ="oneChk" name = "oneChk" value="면접"/></td>
								<td>자기소개서 <input type="checkbox" id ="oneChk" name="oneChk" value="자기소개서"/></td>
								<td>대외활동 <input type="checkbox" id ="oneChk" name = "oneChk" value="대외활동"/></td>
								<td>공모전 <input type="checkbox" id ="oneChk" name="oneChk" value="공모전"/></td>
								<td>토플 <input type="checkbox" id ="oneChk" name = "oneChk" value="토플"/></td>
								<td>기타 <input type="checkbox" id ="oneChk" name="oneChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						
							<div class="detail2">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkTwo" name = "allChk"/></td>
								<td>영어 <input type="checkbox" id ="twoChk" name="twoChk" value="영어"/></td>
								<td>일본어 <input type="checkbox" id ="twoChk" name = "twoChk" value="일본어"/></td>
								<td>중국어 <input type="checkbox" id ="twoChk" name="twoChk" value="중국어"/></td>
								<td>스페인어 <input type="checkbox" id ="twoChk" name = "twoChk" value="스페인어"/></td>
								<td>독일어 <input type="checkbox" id ="twoChk" name="twoChk" value="독일어"/></td>
							</tr>
							<tr>
								<td>프랑스어 <input type="checkbox" id ="twoChk" name = "twoChk" value="프랑스어"/></td>
								<td>아랍어 <input type="checkbox" id ="twoChk" name="twoChk" value="아랍어"/></td>
								<td>러시아어 <input type="checkbox" id ="twoChk" name = "twoChk" value="러시아어"/></td>
								<td>이탈리아어 <input type="checkbox" id ="twoChk" name="twoChk" value="이탈리아어"/></td>
								<td>기타 <input type="checkbox" id ="twoChk" name="twoChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						
						<div class="detail3">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkThree" name = "allChk"/></td>
								<td>주식 <input type="checkbox" id ="thrChk" name="thrChk" value="주식"/></td>
								<td>부동산 <input type="checkbox" id ="thrChk" name = "thrChk" value="부동산"/></td>
								<td>경매 <input type="checkbox" id ="thrChk" name="thrChk" value="경매"/></td>
								<td>재태크 <input type="checkbox" id ="thrChk" name = "thrChk" value="재태크"/></td>
								<td>경제 <input type="checkbox" id ="thrChk" name="thrChk" value="경제"/></td>
							</tr>
							<tr>
								<td>회계 <input type="checkbox" id ="thrChk" name = "thrChk" value="회계"/></td>
								<td>기타 <input type="checkbox" id ="thrChk" name="thrChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						
						<div class="detail4">
							<table cellpadding="10px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkFour" name = "allChk"/></td>
								<td>JAVA <input type="checkbox" id ="fouChk" name="fouChk" value="JAVA"/></td>
								<td>C/C++ <input type="checkbox" id ="fouChk" name = "fouChk" value="C/C++"/></td>
								<td>Python <input type="checkbox" id ="fouChk" name="fouChk" value="Python"/></td>
								<td>Ruby <input type="checkbox" id ="fouChk" name = "fouChk" value="Ruby"/></td>
								<td>Android <input type="checkbox" id ="fouChk" name="fouChk" value="Android"/></td>
							</tr>
							<tr>
								<td>Objective-C <input type="checkbox" id ="fouChk" name = "fouChk" value="Objective-C"/></td>
								<td>LINUX <input type="checkbox" id ="fouChk" name="fouChk" value="LINUX"/></td>
								<td>웹프로그래밍 <input type="checkbox" id ="fouChk" name = "fouChk" value="웹프로그래밍"/></td>
								<td>게임프로그래밍 <input type="checkbox" id ="fouChk" name="fouChk" value="게임프로그래밍"/></td>
								<td>시스템프로그래밍 <input type="checkbox" id ="fouChk" name = "fouChk" value="시스템프로그래밍"/></td>
								<td>임베디드 <input type="checkbox" id ="fouChk" name="fouChk" value="임베디드"/></td>
							</tr>
							<tr>
								<td>데이터베이스 <input type="checkbox" id ="fouChk" name="fouChk" value="데이터베이스"/></td>
								<td>빅데이터 <input type="checkbox" id ="fouChk" name="fouChk" value="빅데이터"/></td>
								<td>소프트웨어공학 <input type="checkbox" id ="fouChk" name="fouChk" value="소프트웨어공학"/></td>
								<td>기타 <input type="checkbox" id ="fouChk" name="fouChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						
						<div class="detail5">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkFive" name = "allChk"/></td>
								<td>발표 <input type="checkbox" id ="fivChk" name="fivChk" value="발표"/></td>
								<td>자격증 <input type="checkbox" id ="fivChk" name = "fivChk" value="자격증"/></td>
								<td>악기 <input type="checkbox" id ="fivChk" name="fivChk" value="악기"/></td>
								<td>바리스타 <input type="checkbox" id ="fivChk" name = "fivChk" value="바리스타"/></td>
								<td>베이킹 <input type="checkbox" id ="fivChk" name="fivChk" value="베이킹"/></td>
							</tr>
							<tr>
								<td>번역 <input type="checkbox" id ="fivChk" name = "fivChk" value="번역"/></td>
								<td>기타 <input type="checkbox" id ="fivChk" name="fivChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						</td>
					</tr>
					
					<tr margin-top=5px;>
					<td id="a_tag">	
					<a href="#" class="button" id="hobby">취미</a>
					
					</td>
					
					<td id="a_tag">	
					<a href="#" class="button" id="gosi">고시</a>
					
					</td>
					
					<td id="a_tag">	
					<a href="#" class="button" id="etc">기타</a>
					
					</td>
					</tr>
					<tr>
						<td colspan="5">
							<div class="detail6">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkSix" name="oneChk"/></td>
								<td>독서 <input type="checkbox" id ="sixChk" name="sixChk" value="독서"/></td>
								<td>요리 <input type="checkbox" id ="sixChk" name = "sixChk" value="요리"/></td>
								<td>카메라 <input type="checkbox" id ="sixChk" name="sixChk" value="카메라"/></td>
								<td>미술 <input type="checkbox" id ="sixChk" name = "sixChk" value="미술"/></td>
								<td>와인 <input type="checkbox" id ="sixChk" name="sixChk" value="와인"/></td>
							</tr>
							<tr>
								<td>천문학 <input type="checkbox" id ="sixChk" name = "sixChk" value="천문학"/></td>
								<td>기타 <input type="checkbox" id ="sixChk" name="sixChk" value="기타"/></td>
								
							</tr>
							</table>
						</div>
						
							<div class="detail7">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkSeven" name = "allChk"/></td>
								<td>사법 <input type="checkbox" id ="sevChk" name="sevChk" value="사법"/></td>
								<td>행정 <input type="checkbox" id ="sevChk" name = "sevChk" value="행정"/></td>
								<td>외무 <input type="checkbox" id ="sevChk" name="sevChk" value="외무"/></td>
								<td>CPA <input type="checkbox" id ="sevChk" name = "sevChk" value="CPA"/></td>
								<td>공무원 <input type="checkbox" id ="sevChk" name="sevChk" value="공무원"/></td>
							</tr>
							<tr>
								<td>임용 <input type="checkbox" id ="sevChk" name = "sevChk" value="임용"/></td>
								<td>감정평가사 <input type="checkbox" id ="sevChk" name="sevChk" value="감정평가사"/></td>
								<td>공인노무사 <input type="checkbox" id ="sevChk" name = "sevChk" value="공인노무사"/></td>
								<td>변리사 <input type="checkbox" id ="sevChk" name="sevChk" value="변리사"/></td>
								<td>세무사 <input type="checkbox" id ="sevChk" name="sevChk" value="세무사"/></td>
								<td>기타 <input type="checkbox" id ="sevChk" name="sevChk" value="기타"/></td>
							</tr>
							</table>
						</div>
						
						<div class="detail8">
							<table cellpadding="20px" text-align="center" >
							<tr >
								<td>전체 <input type="checkbox" id ="allChkEight" name = "allChk"/></td>
								<td>이민 <input type="checkbox" id ="eigChk" name="eigChk" value="이민"/></td>
								<td>입시 <input type="checkbox" id ="eigChk" name = "eigChk" value="입시"/></td>
								<td>기타 <input type="checkbox" id ="eigChk" name="eigChk" value="기타"/></td>
					
							</tr>
							
							</table>
						</div>
						</td>
					</tr>
				</table>
				<br><br>
				<h2>지역별 검색</h2>
				<hr>
				<table>
					<th>지역선택</th><th>시군구 선택</th>
					<tr>
					<td>
						<select id="area" class="soflow1" onchange="doChange(this, 'subSel')">
						  	  <option value="default">---지역---</option>
							  <option value="gangwon">강원</option>
							  <option value="gyonggi">경기</option>
							  <option value="gyongnam">경남</option>
							  <option value="gyongbuk">경북</option>
							  <option value="guangju">광주</option>
							  <option value="daegu">대구</option>
							  <option value="daejeon">대전</option>
							  <option value="busan">부산</option>
							  <option value="seoul">서울</option>
							  <option value="saejong">세종</option>
							  <option value="ulsan">울산</option>
							  <option value="inchoen">인천</option>
							  <option value="junnam">전남</option>
							  <option value="junbuk">전북</option>
							  <option value="jaeju">제주</option>
							  <option value="choongnam">충남</option>
							  <option value="choongbuk">충북</option>
						  </select>
					</td>
					<td>
						<select id="subSel" class="soflow1">
							<option value="default">---시.군.구---</option>
						</select>
					</td>
					</tr>
				</table>
				<br><br>
				<h2>상세검색</h2>
				<div class="ddd">
				<hr>
				<select id="soflow" class="subSearch">
						  <option>전체</option>
						  <option>제목</option>
						  <option>장소</option>
						  <option>모집장 아이디</option>
						  <option>모집장 이름</option>
						  <option>댓글 아이디</option>
						  <option>댓글 이름</option>
				</select>
				
				<input type="text" id="subject" class="tb6">
				<input type="button" id="searchBtn" value="검색">
				</div>
				<br><br>
				<h2>모집중인 스터디</h2>
					<hr>
				
				</div>
				<br><br>
				
				
				<div class="tableDIV">
				
					
					<table class="atable" id="tableAjax" style="text-align:center; border:1px solid #dddddd">
						<thead>
							<tr>
								<td style="background-color: #fafafa; text-align:center;">글번호</td>
								<td style="background-color: #fafafa; text-align:center;">분류</td>
								<td style="background-color: #fafafa; text-align:center;">제목</td>
								<td style="background-color: #fafafa; text-align:center;">시간</td>
								<td style="background-color: #fafafa; text-align:center;">날짜</td>
								<td style="background-color: #fafafa; text-align:center;">조회수</td>
							</tr>
						</thead>
						<tbody id="ajaxTable">
						<c:forEach var="list" items="${list }">
							<tr style="cursor:pointer;" id="record">
								<td>${list.num }</td>
								<td>${list.kind2 }</td>
								<td>${list.subject }</td>
								<td>${list.format_time }</td>
								<td>${list.reg_date}</td>
								<td>${list.readcount }</td>
							</tr>
						</c:forEach>
						</tbody>
						
						</div>
					</table>
					</div>	
						<div class="popupDIV" id="popup">
							<div class="popupInner">
								<div class="popupInnerContent">
									<table id="contentTable">
									<tr>
										<td class="introduce_title">제  목</td><td id="jae"></td>		
									</tr>
									<tr>
										<td class="introduce_title">분  류</td><td id="bun"></td>		
									</tr>
									<tr>
										<td class="introduce_title">기  간</td><td id="s_d"></td><td id="e_d"></td>		
									</tr>
									<tr>
										<td class="introduce_title">요  일</td><td id="yo"></td>		
									</tr>
									<tr>
										<td class="introduce_title">시  간</td><td id="s_h"></td><td id="s_m"></td><td id="e_h"></td><td id="e_m"></td>		
									</tr>
									<tr>
										<td class="introduce_title">지  역</td><td id="pOne"></td><td id="pTwo"></td>		
									</tr>
									<tr>
										<td class="introduce_title">장  소</td><td id="pThr"></td>		
									</tr>
									<tr>
										<td class="introduce_title">인  원</td><td id="inWon"></td>		
									</tr>
									</table>
									<br>
									<div id="curyLabel">
										<span class="introduce_title">스터디 커리큘럼</span>
									</div>
									<br>
									<div style="border:3px solid black" id="cury">
											
									</div>
									
									<div id="mojipjang">
									
									</div>		
									
									<div id="mojpjangContent">
									
									</div>	
									
									<div class="tree_reple_place">
									
										<div class="repleDIV">
											<div class="repleLabel">
												<label class="repleBtn">
													<span>댓글</span>
													<span>▶</span>
												</label>
											</div>
											<!-- 입력버튼 -->
											<div>
												<input type="text" class="input-text" name="content" id="replyContent" value maxlength="300">
											</div>
											<!-- 작성버튼 -->
											<div>
												<input type="button" class="sendBtn" id="sendBtn" value="작성">
											</div>
										</div>
									
									</div>
									<br><br><br>
									<div id="replyList">
										<ul class="replyUl">
											<%-- <c:forEach var="replyList" items="${replyList }">
											<li class="replyLi">
												<span class="replyContent"><img><span class="replyName">
												${replyList.id }
												<span class="replyDate"></span></span><span class="replyContent">
												${replyList.content }
												</span></span>
											</li>
											</c:forEach> --%>
										</ul>
									</div>
									
								</div>
							</div>
						</div>
					</div>	
			
		</div>
		
		<div>
		
		</div>
	</div>
</body>
</html>