<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>상품정보</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%@ include file="/menu.jsp"%>
	<div>
		<h1>상품정보</h1>
	</div>
	<%
	String id = request.getParameter("id");
	String sql = "select * from book where b_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	if(rs.next()){
	%>

	<div class="container">
		<div class="row">
		<div class="col-md-5">
				<img src="../resources/images/<%=rs.getString("b_filename")%>" alt="" class="img-fluid" />
			</div>
			<div class="col-md-6">
			
				<h3><%=rs.getString("b_name")%></h3>
				<p><%=rs.getString("b_description")%></p>
				<p>
					<b>도서코드 : </b><span class="badge badge-info text-wrap" style="width: 3rem;"><%=rs.getString("b_id")%></span>
				</p>
				<p>
					<b>출판사 : </b><%=rs.getString("b_publisher")%></p>
				<p>
					<b>저자 : </b><%=rs.getString("b_author")%></p>
				<p>
					<b>재고 수 : </b><%=rs.getString("b_unitsInStock")%></p>
				<p>
					<b>총 페이지 수 : </b><%=rs.getString("b_totalPages")%></p>
				<p>
					<b>출판일: </b><%=rs.getString("b_releaseDate")%></p>	
				<p>
					<b>분류 : </b><%=rs.getString("b_category")%></p>
				<p>
					<b>책의 상태 : </b><%=rs.getString("b_condition")%></p>	
				
				<p class="display-4"><%=rs.getString("b_unitPrice")%>원
				</p>
				<p>
					<a class="btn btn-warning" href="">도서 주문 &raquo;</a> <a
						class="btn btn-primary" href="./books.jsp">도서 목록 &raquo;</a>
				</p>
			</div>
		</div>
	</div>
		<%
		}
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		if(rs != null) rs.close();
	%>

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