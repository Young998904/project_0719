<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>

<%--<%--%>
<%--    // 넘어올 때 범용 저장소로 부터 넘어왔으므로 형변환 필요--%>
<%--    int dan = (int) request.getAttribute("dan");--%>
<%--    int limit = (int) request.getAttribute("limit");--%>

<%--%>--%>

<%--<h1><%=dan%>단 실행화면 (jsp 버전)</h1>--%>

<%--<h2><%=dan%>단</h2>--%>

<%--<% for (int i=1; i<=limit; i++) { %>--%>
<%--<div><%=dan%> * <%=i%> = <%=dan * i%></div>--%>
<%--<% } %>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    int dan = (int)request.getAttribute("dan");
    int limit = (int)request.getAttribute("limit");
%>

<h1><%=dan%>단</h1>

<% for ( int i = 1; i <= limit; i++ ) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>