<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>상품목록</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%@ include file="/menu.jsp"%>
	<div class="jumbotron jumbotron-fluid">
		<div class="container text-center">
			<h1 class="display-4">도서 목록</h1>

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
				<a class="btn btn-info" href="./book.jsp?id=<%=rs.getString("b_id")%>">상세정보
					&raquo; </a>
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