<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>복습과제 11-2</title>
<style>
input{
	width:50px;
	height:50px;
}
.output{
	height: 50px;
	background: #e9e9e9;
	font-size:24px;
	font-weight: bold;
	text-align: right;
	padding:0px 5px;
}
</style>
</head>
<body>
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String operator = request.getParameter("operator");
	int intnum1 = num1 != null ? Integer.parseInt(num1) : 1;
	int intnum2 = num2 != null ? Integer.parseInt(num2) : 1;
		
		// 함수를 만들어서 그 결과값 반환을 결과창에 쓰라는 말씀이신가요...?
		
	%>
	
	<%!
	public int mul(int num1, int num2){
		return num1 * num2;
	}
	%>


	<div>
		<form action = "myjspexample2.jsp" method="get">
			<table>
			  <tr>
			  	<td class="output" colspan="4"><%= intnum1 %> * <%= intnum2 %> = <%= mul(intnum1, intnum2) %></td>
			  	<input type="hidden" name="num1" value=<%= mul(intnum1, intnum2)  %>>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="operator" value="CE"/></td>
			  	<td><input type="submit" name="operator" value="C"/></td>
			  	<td><input type="submit" name="operator" value="BS"/></td>
			  	<td><input type="submit" name="operator" value="/"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="num2" value="7"/></td>
			  	<td><input type="submit" name="num2" value="8"/></td>
			  	<td><input type="submit" name="num2" value="9"/></td>
			  	<td><input type="submit" name="operator" value="*"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="num2" value="4"/></td>
			  	<td><input type="submit" name="num2" value="5"/></td>
			  	<td><input type="submit" name="num2" value="6"/></td>
			  	<td><input type="submit" name="operator" value="-"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="num2" value="1"/></td>
			  	<td><input type="submit" name="num2" value="2"/></td>
			  	<td><input type="submit" name="num2" value="3"/></td>
			  	<td><input type="submit" name="operator" value="+"/></td>
			  </tr>
			  <tr>
			  	<td></td>
			  	<td><input type="submit" name="num2" value="0"/></td>
			  	<td><input type="submit" name="dot" value="."/></td>
			  	<td><input type="submit" name="operator" value="="/></td>
			  </tr>
			</table>		
			
		</form>
	</div>
</body>
</html>