<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<style>
 h3 {
    font-weight: bold;
    text-align: center;
  }
  h5 {
    text-align: center;
  }
</style>
<body>

	<jsp:include page="../../header.jsp" />
	<br><br>
	<H3> Men's Best Top</H3>
	<H5>    남성 인기 상의</H5>
	
	
	
		<jsp:include page="../../footer.jsp" />
</body>
</html>