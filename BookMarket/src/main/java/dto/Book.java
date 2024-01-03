package dto;

import java.io.Serializable;

public class Book implements Serializable {
	private String bookId;// 도서 아이디
	private String name; // 도서이름
	private int unitPrice;// 가격
	private String description;// 설명
	private String author;// 저자
	private String publisher;// 출판사
	private String category;// 분류
	private long unitsInStock;// 재고 수
	private long totalPages;// 페이지 수
	private String releaseDate;// 출판일(월/년)
	private String condition; // 신규 도서 혹은 중고 도서 혹은 이북
	private int quantity; // 고객 구매수량
	private String filename; //이미지 파일명
	
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getBookId() {
		return bookId;
	}

	public Book(String bookId, String name, int unitPrice) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public long getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}
