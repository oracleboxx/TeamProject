<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#top { position: fixed; bottom: 3rem; right: 2rem; ;
		border-radius:50%;        
 color:white;
    background-color: black;
 /* 이미지 파일 경로를 지정합니다. */
 background-size: 20px; /* 이미지의 가로 및 세로 크기를 50px로 지정 */
    background-repeat: no-repeat;
    background-position: center center;
   }
   </style>
<meta charset="UTF-8">
<title>Team3Web</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
   <jsp:include page="header.jsp" />
   <div id="carouselExampleAutoplaying" class="carousel slide"
      data-bs-ride="carousel">
      <!-- Carousel Indicators -->
      <ol class="carousel-indicators">
         <li data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="0"
            class="active"></li>
         <li data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="1"></li>
         <li data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
         <div class="carousel-item active">
            <img src="<%=request.getContextPath()%>/resources/img/slider/sample_image_1.jpg"
               class="d-block w-100" alt="slider_image_1">
         </div>
         <div class="carousel-item">
            <img src="<%=request.getContextPath()%>/resources/img/slider/sample_image_2.jpg"
               class="d-block w-100" alt="slider_image_2">
         </div>
         <div class="carousel-item">
            <img src="<%=request.getContextPath()%>/resources/img/slider/sample_image_3.jpg"
               class="d-block w-100" alt="slider_image_3">
         </div>
      </div>
      <button class="carousel-control-prev" type="button"
         data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button"
         data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Next</span>
      </button>
   </div>

   <!-- Product Cards -->
   <div class="container mt-4">
      <div class="text-start ms-1 me-1">
         <h5 class="text-dark ms-1" style="font-weight: bold;">Just
            Dropped</h5>
         <h6 class="text-muted ms-1">신상품</h6>
         <hr>
      </div>

      <div class="row">
         <!-- Repeat the below card structure for each product -->
     
            <div class="container">
        <h5>Product List</h5>
        <div class="row">
            <c:forEach items="${products}" var="product">
                <div class="col-xl-3 col-lg-4 col-md-6 col-6">
               
                    <div class="product-card">
                     <a href="<%=request.getContextPath()%>/productItem?productId=${product.productId}">
                        <img src="${pageContext.request.contextPath}${product.imageUrl}" class="product-image" alt="Product Image">
                        </a>
                        <h4>${product.name}</h4>
                        <p>Price: $${product.price}</p>
                        <!-- Add more product information here -->
                        
                    </div>

                </div>
            </c:forEach>
        </div>
    </div>
         <!-- End of the repeating card structure -->
      </div>
   </div>
   
   <div class="text-center mt-0">
      <!-- Adjusted the margin-top to 2rem -->
      <a href="<%=request.getContextPath()%>/products/details" class="btn btn-outline-secondary mb-3">더보기</a>
   </div>
   
   <jsp:include page="footer.jsp" />
   <a href="#site-header" id="top">
    <img src="<%=request.getContextPath()%>/resources/img/icon/top.png" alt="TOP" width="50px"height="50px">
</a>
	
   
   
<script>

document.addEventListener("DOMContentLoaded", function () {
    let Top = document.querySelector('#top');
    
    window.addEventListener('scroll', function () {
        if (window.scrollY > 200) {
            Top.classList.add('on');
        } else {
            Top.classList.remove('on');
        }
    });

    Top.addEventListener('click', function (e) {
        e.preventDefault();
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });
});
</script>
   <!-- Bootstrap JS and Popper.js -->
   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/script.js"></script>
</body>
</html>