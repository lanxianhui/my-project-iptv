﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>李阳疯狂英语</title>
<style type="text/css">
body {
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
a{display: inline-block;text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE10 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.STYLE12 {font-family: "黑体";color: #FF9900;font-size: 16px;}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 16px;}
.STYLE18 {color: #FBB90B; font-size: 18px; font-family: "黑体"; }
.titleon {
	float: left;
	width:533px; 
	height:47px;
	padding-left: 18px;
	border-style: solid; 
	border-width: 2px;
	border-color: #FFA22F; 
	color: #FFFFFF; 
	font-size: 20px;
	line-height: 47px;
	background: url("images/lyfkyy-5-2.jpg");
}
.titleoff {
	float: left;
	width: 535px; 
	height: 47px;
	padding-left: 18px;
	border-style: solid; 
	border-width: 1px;
	border-color: #CC7100; 
	color: #FBB90B; 
	font-size: 20px;
	line-height: 47px;
	background: url("images/lyfkyy-5.jpg");
}
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};

var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
window.onload = function() {
	if($("defaultFocus") != "undefined" && $("defaultFocus") != null) {
		$("defaultFocus").focus();
	}
};
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
	case 8:
	case 109:
	case 283:
		location.href =  "${ctx}/crazyenglish/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

/**
 * 焦点时的样式
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}

var epg_server = '${requestScope.localIp}';
function goto_play(id,fileID,ztID,filmId){
	var pay_confirm_url = "${ctx}/crazyenglish/filmAction!orderConfirm.do?filmId="+filmId;
	var currentPage = "${pageBean.curPage}";
	var backUrl = "${ctx}/crazyenglish/filmAction!listAsset.do?filmId="+filmId+"&curPage="+currentPage;
	backUrl = escape(backUrl);
	var gotoUrl = epg_server + "play_pageControl.jsp?PROGID="+fileID;
	gotoUrl = escape(gotoUrl);
	location.href = epg_server + "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl;
}
</script>
</head>

<body>
<%@ include file="/crazyenglish/head.jsp" %>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/lyfkyy-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121">
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
    <div style="height: 385px;width:575px;background-color:#602121;">
      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
	      <c:forEach items="${pageBean.items}" var="result" varStatus="status">
		      	<c:if test="${status.count == 1}">
			      	<tr>
			        	<td width="555" height="55"><a href="javascript:goto_play(${result.id},'${result.fileId }','${requestScope.contentID }','${result.filmid }');" id="defaultFocus" onfocus="focusStyle('t_0_${status.count }','titleon');" onblur="focusStyle('t_0_${status.count }','titleoff');">
			        	<div id="t_0_${status.count }" class="titleon">第${(pageBean.curPage-1)*7+status.count }集  ${result.name }</div>
			        	</a></td>
			        </tr>
			     </c:if>
			     <c:if test="${status.count != 1}">
			           <tr>
					        <td height="55"><a href="javascript:goto_play(${result.id },'${result.fileId }','${requestScope.contentID }','${result.filmid }');" onfocus="focusStyle('t_1_${status.count }','titleon');" onblur="focusStyle('t_1_${status.count }','titleoff');">
					        <div id="t_1_${status.count }" class="titleoff">第${(pageBean.curPage-1)*7+status.count }集  ${result.name }</div></a></td>
       					</tr>
			     </c:if>
	       </c:forEach>
      </table>
    </div>
     <div id="page_navigator" style="width: 575px;">
	      <table width="575" border="0" align="center" cellpadding="0" cellspacing="0">
	        <tr>
	        	<td width="170"></td>
	        	<td align="center" height="27" valign="bottom" class="STYLE14" width="50">${pageBean.curPage}/${pageBean.totalPages}</td>
	            <td align="center" height="27" valign="bottom" class="STYLE14" width="90">
			           <c:if test="${pageBean.curPage > 1}">
			           		<a href="${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage-1}&channelId=2" class="STYLE14">上一页</a>
			           </c:if>
				 </td>
				  <td align="center" height="27" valign="bottom" class="STYLE14" width="90">
			           <c:if test="${pageBean.curPage < pageBean.totalPages}">
			           		<a href="${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage+1}&channelId=2" class="STYLE14">下一页</a>
			           </c:if>
	           	</td>
	           	<td width="175"></td>
	        </tr>
	      </table>
    </div>      
      </td>
    <td width="34"><img src="images/lyfkyy-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>

</body>

</html>

