<%@ page language="java" contentType="text/plain; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	String value = request.getParameter("value");
	String type = request.getParameter("type");
	
	if (value.equals("1")) {
%>
[
	{text: "1", value: "1"},
	{text: "2", value: "2"},
	{text: "3", value: "3"}
]
<%
	} else if (value.equals("2")) {
%>
[
	{text: "1", value: "1"},
	{text: "2", value: "2"},
	{text: "3", value: "3"}
]
<%
	} else if (value.equals("3")) {
%>
[
	{text: "1", value: "1"},
	{text: "2", value: "2"},
	{text: "3", value: "3"}
]
<%
	}
%>