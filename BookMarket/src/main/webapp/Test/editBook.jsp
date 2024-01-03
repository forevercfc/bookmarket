<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>도서 수정</title>
<script>
	function deleteConfirm(id){
		if(confirm("해당 상품을 정말 삭제하시겠습니까?")==true) location.href="./processDeleteBook.jsp?id="+id;
		else
			event.stopProgation();
			event.preventDefault();
	}
</script>
<!-- Bootstrap CSS -->
<%
	String edit = request.getParameter("edit");
%>

</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%@ include file="/menu.jsp"%>
	<div class="jumbotron jumbotron-fluid">
		<div class="container text-center">
			<h1 class="display-4">도서 수정</h1>

		</div>
	</div>
	
	<div class="container">
	<%String realFolder = application.getRealPath("/resources/images/"); %>
		<%=realFolder %>
		<div class="row">
		<%
		String sql = "select * from book";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
		%>
		<div class="col-12 border border-gray">
		<img src="../resources/images/<%=rs.getString("b_filename") %>" alt="" class="img-fluid"/>
			<h3>[<%=rs.getString("b_category")%>]</h3>
			<br />
			<h3><%=rs.getString("b_name")%></h3>
			<br />
			<p><%=rs.getString("b_description")%></p>
			<p><%=rs.getString("b_unitPrice")%>원
			</p>
			<p>
				<%
					if(edit.equals("update")){					
				%>
				<a href="./updateBook.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-warning">수정
					&raquo;</a>
				<%
					}else if(edit.equals("delete")){
				%>
				<a href="#" class="btn btn-danger" onclick="deleteConfirm('<%=rs.getString("b_id")%>')">삭제
					&raquo;</a>
				<%
					}
				%>
			</p>
		</div>
	<%
			}
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rs != null) rs.close();
		%>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
</body>
</html>