<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>테스트 폼</title>
</head>
<body>

<div>
	폼에 데이터를 입력한 후 '전 송' 버튼을 클릭하세요
	<form action="viewParameter.jsp" method="get">
	<!-- 
	get 과 post 의 차이
	http://localhost:9000/jee/views/model1/viewParameter.jsp?name=%EC%A0%95%EB%AF%BC%EA%B7%9C&address=%EC%A0%84%EB%B6%81+%EA%B5%B0%EC%82%B0&pet=dog&pet=cat
	http://localhost:9000/jee/views/model1/viewParameter.jsp
	위에가 get
	아래가 post
	get은 뒤에 URL 뒤에 ?와 함께 파라미터를 붙여서 전송 - 쿼리스트링이라고 함
	get 이 속도가 빨라서 보통 search 때 사용 
	get 방식은 웹 브라우저, 웹 서버 또는 웹 컨테이너(WAS - 톰캣,제우스...) 에
	따라 전송할 수 있는 길이에 제한이 있다.
	
	POST 방식은 데이터 영역을 이용해서 데이터를 전송하기 때문에
	웹브라우저나 웹서버 등에 상관없이 전송할 수 있는 파라미터 길이에 제한이 없다.
	-->
		이 름 : <input type="text" name="name" size="10" /> <br />
		주 소 : <input type="text" name="address" size="30" /> <br />
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="dog" /> 강아지
			<input type="checkbox" name="pet" value="cat" /> 고양이
			<input type="checkbox" name="pet" value="pig" /> 돼  지 <br />
		<input type="submit" value="전 송"/>
	</form>	
</div>

</body>
</html>