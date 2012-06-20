<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>疯狂英语</title>
<style type="text/css">
body {
    letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
	width:1280px;
	height:720px;
}
.STYLE13 {font-family: "黑体"; font-size: 15px; color: #FFFFFF; }
.STYLE18 {
	font-size: 24px;
	color: #FFFFFF;
}
.STYLE20 {font-size: 18px}
.STYLE21 {
	color: #FBB90B;
	font-size: 18px;
}
.STYLE22 {font-size: 18}
.STYLE23 {font-size: 20px}
.STYLE24 {color: #FFFFFF}
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};
var columnID = "${requestScope.columnID}";
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
		//window.history.back();
		location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=9";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=9";
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
 * @param target 焦点目标
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
};
</script>

</head>

<body>

<%@ include file="/crazyenglish_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="602121"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="40" align="center">&nbsp;</td>
      </tr>
    </table>
      <table height="146" border="1" align="center" cellpadding="0" cellspacing="12" bordercolor="602121">
      <tr>
        <td width="268" height="185" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
        </table></td>
        <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
        </table></td>
        <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
        </table></td>
        <td width="268" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
        </table></td>
      </tr>
    </table>
      <table height="146" border="1" align="center" cellpadding="0" cellspacing="12" bordercolor="602121">
        <tr>
          <td width="268" height="185" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
                <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                        <br />
                        <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                        <span class="STYLE21">免费</span></span></p></td>
              </tr>
          </table></td>
          <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
                <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                        <br />
                        <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                        <span class="STYLE21">免费</span></span></p></td>
              </tr>
          </table></td>
          <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
                <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                        <br />
                        <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                        <span class="STYLE21">免费</span></span></p></td>
              </tr>
          </table></td>
          <td width="268" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
                <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                        <br />
                        <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                        <span class="STYLE21">免费</span></span></p></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="100" align="center"><span class="STYLE12 STYLE14 STYLE24 STYLE18">1/8  　上一页　下一页</span></td>
        </tr>
      </table></td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

<%@ include file="/crazyenglish_hd/footer.jsp" %>

</body>
</html>
