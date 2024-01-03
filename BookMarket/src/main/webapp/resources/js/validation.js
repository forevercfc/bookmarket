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
    let image = document.newProduct.productImage;
    
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

    if (!check(/^ISBN\d{5,12}$/, bookId, "[1]도서 아이디는 ISBN으로 시작하고 5-12자리의 숫자를 조합해야 합니다."))
        return false;
        
    if (!check(/.{4,12}/, name, "[2]도서 명은 최소 4-12자리까지 입력해야 합니다."))
        return false;
        
    if(unitPrice.value < 0){
		alert("[상품 가격]\n 음수를 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if(!check(/^\d+(?:[.]?[\d]{0}?)$/, unitPrice, "[상품 가격]\n 소수점 둘째 자리까지만 입력하세요.")){
		return false;
	}
        
    if (!check(/.+/, author, "[4]저자를 입력해야 합니다."))
        return false;
        
    if (!check(/.+/, publisher, "[5]출판사를 입력해야 합니다."))
        return false;
        
    if (!check(/.+/, releaseDate, "[6]출판일을 입력해야 합니다."))
        return false;
        
    if (!check(/.+/, totalPages, "[7]페이지수를 입력해야 합니다."))
        return false;
        
    if (!check(/.+/, category, "[8]카테고리를 입력해야 합니다."))
        return false;
        
    if (!check(/^\d+$/, unitsInStock, "[9]상품 재고는 숫자만 입력해야 하며, 음수나 소수점은 입력할 수 없습니다."))
        return false;
        
    if (!image.value) {
        alert("[10]이미지를 등록해야 합니다.");
        return false;
    }

    document.newBook.submit();
    
    
   /* let form = document.forms.newBook;
    form.submit();*/
}

