<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.res.model.Res" %>
<%@ page import="com.res.model.User" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //��ȡ���е�resource��Ϣ
    List<Res> resourceList = (List<Res>)request.getAttribute("resourceList");
    //��ȡ���е�user��Ϣ
    List<User> userList = (List<User>)request.getAttribute("userList");
    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<HTML><HEAD><TITLE>��Ӳ�����Ϣ</TITLE> 
<STYLE type=text/css>
BODY {
    	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <s:form action="LoanInfo/LoanInfo_AddLoanInfo.action" method="post" id="loanInfoAddForm" onsubmit="return checkForm();"  enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  <tr>
    <td width=30%>��Դ����:</td>
    <td width=70%>
      <select name="record.resource.resourcename">
      <%
        for(Res res:ResList) {
      %>
          <option value='<%=res.getResname() %>'><%=res.getResname() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>�û�����:</td>
    <td width=70%>
      <select name="record.user.username">
      <%
        for(User user:userList) {
      %>
          <option value='<%=user.getUsername() %>'><%=user.getUsername() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>����ʱ��:</td>
    <td width=70%><input type="text" readonly id="record.Date"  name="record.Date" onclick="setDay(this);"/></td>
  </tr>
  

  <tr bgcolor='#FFFFFF'>
      <td colspan="4" align="center">
        <input type='submit' name='button' value='����' >
        &nbsp;&nbsp;
        <input type="reset" value='��д' />
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
