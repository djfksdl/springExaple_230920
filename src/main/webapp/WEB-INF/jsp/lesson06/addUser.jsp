<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원 정보 추가</h1>
		
		<form method="post" action="/lesson04/ex01/add_user">
			<div class="form-group">
				<label for="name"><b>이름</b></label>
				<input type="text" id="name" name="name" class="form-control col-3" placeholder="이름을 입력하세요">
			</div>
			<div class="form-group">
				<label for="yyyymmdd"><b>생년월일</b></label>
				<input type="text" id="yyyymmdd" name="yyyymmdd" class="form-control col-3" placeholder="예)20190101">
			</div>
			<div class="form-group">
				<label for="email"><b>이메일</b></label>
				<input type="text" id="email" name="email" class="form-control col-3" placeholder="이메일주소를 입력하세요">
			</div>
			<div class="form-group">
				<label for="introduce"><b>자기소개</b></label>
				<textarea id="introduce" name="introduce" class="form-control col-5" rows="10"></textarea>
			</div>
			
			<input type="submit" class="btn btn-success" value="추가">
		</form>
	</div>
	<script>
		//AJAX : 서버요청
		$.ajax({
			//request --type,url은 반드시 소문자! 뒤에 post는 대문자,소문자 상관없음
			type:"POST"
			, url:"/lesson06/ex01/add-user"
			, data: {"name" : name , "yyyymmdd" : yyyymmdd , "email" : email , "introduce" : introduce} //JSON String
			
			//response
			//call back 함수
			, success: function(data){ // data: response결과 응답, 위에 있는 data와 상관없음
				//서버 처리 후 에러가 없을때 수행됨
				//alert(data);
				if(data == "성공"){
					location.href = "/lesson06/ex01/get-latest-user";
				}
				
			}
			,complete:function(data){
				// 성공이든 실패든 무조건 불려짐 => 안씀!!
				alert(data);
			}
			, error:function(request , status , error){
				//에러일때 수행됨(400,500...)
				alert(request);
				alert(status);
				alert(error);
			}
		});
	</script>
</body>
</html>