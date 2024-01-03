--[Book 테이블 생성]
create table book(
    b_id varchar2(30) not null,
    b_name varchar2(50),
    b_unitPrice number,
    b_author VARCHAR2(100),
    b_publisher varchar2(30),
    b_description varchar2(1000),
    b_category varchar2(30),
    b_unitsInStock number,
    b_totalPages number,
    b_releaseDate VARCHAR2(50),
    b_condition varchar2(20),
    b_filename varchar2(30),
    b_quantity number default 0,
    primary key(b_id)
);
select*from tab;
desc book;
select*from book;
DROP table book purge;
commit;

insert into book values('ISBN1254','HTML5+CSS',15000,'황재호','한빛미디어','워드나 PPT문서를 만들수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지에 도전하세요. HTML5, CSS3를 배우는 것보다 더 중요한 것은 그것을 이용해 웹 페이지를 구현하는 것입니다. 이 책은 HTML5 표준과 CSS3 표준을 사용하여 웹 페이지를 구현하는 방법을 중심으로 설명합니다. 웹 페이지 레이아웃, 스마트폰 레이아웃, 태블릿 PC 레이아웃, 소셜커머스 메인 페이지 레이아웃을 담았습니다.','코딩서적',5000,256,'2018-05-06','신규 도서','codingbook_08.png',0);
insert into book values('ISBN1564','쉽게 배우는 자바 프로그래밍',27000,'우종중','한빛미디어','객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현을 한 흐름으로 학습할 수 있습니다. 또한 [기초 체력을 다지는 예제 → 셀프 테스트 → 생각을 논리적으로 정리하며 한 단계씩 풀어 가는 도전 과제 → 스토리가 가미된 흥미로운 프로그래밍 문제] 등을 통해 프로그래밍 실력을 차근차근 끌어올릴 수 있습니다.','코딩서적',8000,226,'2020-04-11','중고 도서','codingbook_09.png',0);
insert into book values('ISBN1838','스프링4 입문',27000,'하세가와 유이치,오오노 와타루,토키 코헤이(권은철,전민수)','한빛미디어','스프링은 단순히 사용 방법만 익히는것보다 아키텍쳐를 이해하는게 중요합니다! 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 이 책은 네트워크의 기본 흐름, 프로그램 실행 구조, 암호의 이해, 보안 솔루션의 구성, 보안 조직과 정책, 보안 전문가가 갖추어야 할 사항 등을 다룹니다. 또한 다른 분야이지만 보안을 공부할 때 알아두면 유용한 내용, 필자가 실무에 종사하면서 체득한 유용한 팁 등도 담고 있습니다. 보안을 처음 공부하거나 전공하는 사람 모두에게 정보 보안 전반에 대한 안목을 길러줄 것입니다.','코딩서적',10000,306,'2023-05-06','e-book','codingbook_10.png',0);
select * from book where b_id='ISBN919191';