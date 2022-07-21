<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ll.exam.Rq" %>

<%
    Rq rq = new Rq (request, response);
    int dan = rq.getIntParam("dan", 0);
    int limit =rq.getIntParam("limit", 0);
%>
<h1><%=dan%>단 실행화면 (jsp 버전)</h1>

<h2><%=dan%>단</h2>

<% for (int i=1; i<=limit; i++) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>

<%--<!-- 방식 1 -->--%>
<%--<% out.print("<h1>정말일까?</h1>"); %>--%>
<%--<!-- 방식 2 -->--%>
<%--<%="<h1>정말일까?</h1>"%>--%>
<%--<!-- 방식 3 -->--%>