<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>


<%
   request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = application.getRealPath("resources/images");
	String encType = "UTF-8";
	int maxSize = 5 * 1024 * 1024; //업로드 가능한  이미지 최대 파일용량
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
   String bookId = multi.getParameter("bookId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String description = multi.getParameter("description");
   String author = multi.getParameter("author");
   String publisher = multi.getParameter("publisher");
   String category = multi.getParameter("category");
   String unitsInStock = multi.getParameter("unitsInStock");
   String totalPages = multi.getParameter("totalPages");
   String condition = multi.getParameter("condition");
   String releaseDate = multi.getParameter("releaseDate");
 
   
   
   //2) input 태그에 입력한 데이터를 전달받아 변수에 저장
   
   int price;
   if(unitPrice.isEmpty()) price=0;
   else price = Integer.valueOf(unitPrice);
   //문자열 데이터를 정수로 변환
   
   long pages;
   if(totalPages.isEmpty()) pages=0;
   else pages=Long.valueOf(totalPages);
   
   long stock;
   if(unitsInStock.isEmpty()) stock=0;
   else stock=Long.valueOf(unitsInStock); //문자열 데이터를 정수로 변환
   
   Enumeration files = multi.getFileNames(); 
   String fname = (String) files.nextElement();
   String fileName = multi.getFilesystemName(fname);
   
   String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?,0)";

   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,bookId);
   pstmt.setString(2,name);
   pstmt.setInt(3,price);
   pstmt.setString(4,author);
   pstmt.setString(5,publisher);
   pstmt.setString(6,description);
   pstmt.setString(7,category);
   pstmt.setLong(8,stock);
   pstmt.setLong(9,pages);
   pstmt.setString(10,releaseDate);
   pstmt.setString(11,condition);
   pstmt.setString(12,fileName);
   pstmt.executeUpdate();	
   
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	
  

	response.sendRedirect("./books.jsp");

%>