<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>孕育早教_错误页面</title>
<style type="text/css">
body {
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.msgDiv{margin: 0 auto;margin-top: 100px;width: 400px;color: #ffffff;font-size: 20px; }
</style>
<script type="text/javascript" src="js/global.js"></script>
</head>

<body bgcolor="transparent">

<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/yyzj/images/zyzj-1.jpg" width="184" height="72" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><img src="${ctx }/yyzj/images/zyzj-1-2.jpg" name="Image6" width="136" height="72" border="0" usemap="#Image6Map" id="Image6" /></td>
    <td><img src="${ctx }/yyzj/images/zyzj-1-3.jpg" name="Image7" width="129" height="72" border="0" usemap="#Image7Map" id="Image7" /></td>
    <td><img src="${ctx }/yyzj/images/zyzj-1-4.jpg" name="Image8" width="195" height="72" border="0" usemap="#Image8Map" id="Image8" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="${ctx }/yyzj/images/zyzj-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top"  bgcolor="#214c47">
   		<div class="msgDiv">
   		   	<c:choose>
   				<c:when test="${requestScope.msg != null}">${requestScope.msg }</c:when>
   				<c:otherwise>应用暂时不能访问,请稍后,按首页键返回</c:otherwise>
   			</c:choose>
   		</div>
    </td>
    <td width="34"><img src="${ctx }/yyzj/images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/yyzj/images/zyzj-4.jpg" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>