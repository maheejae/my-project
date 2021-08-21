<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="jsp.member.model.MemberBean" %>    
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 처리 jsp</title>
		<style>
        	#wrap{
            	margin-left:auto; 
            	margin-right:auto;
        	}
        	h1{
        		color:blue;
        	}
        	table{
           		margin-left:auto; 
            	margin-right:auto;
            	border:3px solid skyblue
        	}
        
        	td{
           		border:1px solid skyblue
        	}
        
        	#title{
            	background-color:skyblue
        	}
    	</style>
	</head>
	
	<body>
		<%
			request.setCharacterEncoding("UTF-8");		
		%>
		<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean"/>
		<jsp:setProperty property="*" name="memberBean"/>
		<div id="wrap">
			<h1>회원가입 정보를 확인하세요.</h1>
			<font color="black"><%=memberBean.getName() %></font>님 가입을 축하드립니다.
			<table>
				<tr>
					<th id="title">아이디</th>
					<td><%=memberBean.getId() %></td>
				</tr>
				
				<tr>
					<th id="title">비밀번호</th>
					<td><%=memberBean.getPassword() %></td>
				</tr>
				
				<tr>
					<th id="title">이름</th>
					<td><%=memberBean.getName() %></td>
				</tr>
					
				<tr>
					<th id="title">성별</th>
					<td>
						<%=memberBean.getGender() %>
					</td>
				</tr>
				
				<tr>
					<th id="title">생일</th>
					<td>
						<%=memberBean.getBirthyy() %>년
						<%=memberBean.getBirthmm() %>월
						<%=memberBean.getBirthdd() %>일
					</td>
				</tr>			
				
				<tr>
					<th id="title">이메일</th>
					<td>
						<%=memberBean.getMail1() %>@
						<%=memberBean.getMail2()%>
					</td>
				</tr>
				
				<tr>
					<th id="title">휴대전화</th>
					<td>
						<%=memberBean.getPhone()%>
					</td>
				</tr>
				
				<tr>
					<th id="title">주소</th>
					<td>
						<%=memberBean.getAddress()%>
					</td>	
				</tr>	
			</table>
			<input type="button" value="확인">
		</div>
	</body>
</html>