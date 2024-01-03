<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<title>책 등록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >

	<!-- 관리자계정의 판매자가 웹 쇼핑몰의 상품 정보를 등록하는 form양식 -->
	<%@ include file="/menu.jsp"%>
	<div class="jumbotron jumbotron-fluid">
		<div class="container text-center">
			<h1 class="display-4">
				<fmt:message key="title" />
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="text-right">
						<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
					</div>
					
				<form action="./processAddBook.jsp" name="newBook" method="post"
					enctype="multipart/form-data">
					<div class="form-group row text-left">
						<label for="bookId" class="col-sm-2 col-form-label">
						<fmt:message key="bookId" />
					</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="bookId" name="bookId">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="name" class="col-sm-2 col-form-label"><fmt:message
									key="name" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="name" name="name">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="unitPrice" class="col-sm-2 col-form-label"><fmt:message key="unitPrice" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="unitPrice"
								name="unitPrice">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="author" class="col-sm-2 col-form-label"><fmt:message key="author" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="author" name="author">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="publisher" class="col-sm-2 col-form-label"><fmt:message key="publisher" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="publisher"
								name="publisher">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="releaseDate" class="col-sm-2 col-form-label"><fmt:message key="releaseDate" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="releaseDate"
								name="releaseDate">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="totalPages" class="col-sm-2 col-form-label"><fmt:message key="totalPages" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="totalPages"
								name="totalPages">
						</div>
					</div>

					<div class="form-group row text-left">
						<label for="inputPassword" class="col-sm-2 col-form-label"><fmt:message key="description" /></label>
						<div class="col-sm-5">
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3" name="description"></textarea>
						</div>
					</div>

					<div class="form-group row text-left">
						<label for="category" class="col-sm-2 col-form-label"><fmt:message key="category" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="category"
								name="category">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="unitsInStock" class="col-sm-2 col-form-label"><fmt:message key="unitsInStock" /></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="unitsInStock"
								name="unitsInStock">
						</div>
					</div>
					<div class="form-group row text-left">
						<label for="inputPassword" class="col-sm-2 col-form-label"><fmt:message key="condition" /></label>
						<div class="col-sm-5">
							<input type="radio" name="condition" id="inputPassword"
								value="new" checked><fmt:message key="condition_New" /><input type="radio"
								name="condition" id="inputPassword" value="old"><fmt:message key="condition_Old" /><input
								type="radio" name="condition" id="inputPassword" value="E-book">
							<fmt:message key="condition_E-book" />
						</div>
					</div>

					<div class="form-group row text-left">
						<label for="bookImage" class="col-sm-3 col-form-label"><fmt:message key="bookImage" /></label>
						<div class="col-sm-5">
							<input type="file" class="form-control" id="bookImage"
								name="bookImage">
						</div>
					</div>




					<div class="form-group row text-left">
						<label for="inputSubmit" class="col-sm-2 col-form-label"></label>
						<div class="col-sm-5">
							<input type="button" id="inputSubmit" class="btn btn-info"
								value="<fmt:message key='button'/>" onclick="checkAddBook()">
						</div>
					</div>



				</form>
				

			</div>
			<!-- col -->
		</div>
		<!-- row -->
	</div>
	<!-- container-fluid -->










	<%@ include file="/footer.jsp"%>
	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
 </fmt:bundle>

	<script>
	function checkAddBook() {
	    let bookId = document.getElementById("bookId");
	    let name = document.getElementById("name");
	    let unitPrice = document.getElementById("unitPrice");
	    let author = document.getElementById("author");
	    let publisher = document.getElementById("publisher");
	    let releaseDate = document.getElementById("releaseDate");
	    let totalPages = document.getElementById("totalPages");
	    let category = document.getElementById("category");
	    let unitsInStock = document.getElementById("unitsInStock");
	    let image =  document.getElementById("bookImage");
	    
	    function check(regExp, e, msg) {
	    if (regExp.test(e.value)) {
	        return true;
	    } else {
	        alert(msg);
	        e.select();
	        e.focus();
	        return false;
	    }
	}

	    if (!check(/^ISBN\d{5,12}$/, bookId, "[도서 아이디]ISBN과 숫자를 조합하여 5~12자리까지 입력하세요. 첫글자는 반드시 ISBN으로 시작합니다."))
	        return false;
	        
	  //상품명 체크
		if(name.value.length < 4 || name.value.length > 12){
			alert("[도서명]\n 최소 4에서 12자리까지 입력하세요.");
			return false;
		}
	        
	    if (!check(/^\d+$/, unitPrice, "[가격]숫자를 입력해주세요."))
	        return false;
	        
	    if (!check(/.+/, author, "저자를 입력해야 합니다."))
	        return false;
	        
	    if (!check(/.+/, publisher, "출판사를 입력해야 합니다."))
	        return false;
	        
	    if (!check(/.+/, releaseDate, "출판일을 입력해야 합니다."))
	        return false;
	        
	    if (!check(/.+/, totalPages, "총 페이지수를 입력해야 합니다."))
	        return false;
	        
	    if (!check(/.+/, category, "분류의 내용을 입력해주세요."))
	        return false;
	        
	    if (!check(/^\d+$/, unitsInStock, "[재고수] 숫자가 입력되지 않았습니다."))
	        return false;
	        
	    if (!image.value) {
	        alert("책 이미지를 등록해야 합니다.");
	        return false;
	    }

	    document.newBook.submit();
	    
	    
	   /* let form = document.forms.newBook;
	    form.submit();*/
	}


	</script>
	
</body>
</html>