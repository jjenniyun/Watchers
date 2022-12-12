<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>Logis Bootstrap Template - About</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- Favicons -->
<link href="resources/assets/img/favicon.png" rel="icon" />
<link href="resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon" />

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link href="resources/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" />
<link href="resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet" />
<link href="resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet" />
<link href="resources/assets/vendor/aos/aos.css" rel="stylesheet" />

<!-- Template Main CSS File -->
<link href="resources/assets/css/main.css" rel="stylesheet" />

<!-- =======================================================
  * Template Name: Logis - v1.2.1
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!-- 폰트 -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

.search-box {
   top: 109%;
   left: 50%;
   background-color: #cfe2fb;
   height: 55px;
   padding: 10px;
   border-radius: 10px;
   width: 250px;
   margin-left: auto;
}

.search-btn {
   color: #EDEDED;
   float: right;
   width: 40px;
   height: 40px;
   border-radius: 10px;
   background: #485c87;
   display: flex;
   align-items: center;
   justify-content: center;
}

.search-txt {
   float: left;
   padding: 0;
   background: none;
   border: none;
   outline: none;
   font-size: 15px;
   line-height: 40px;
}
</style>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
   integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
   crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">
			<a href="#" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="assets/img/logo.png" alt=""> -->
				<h1>Watcher</h1>
			</a> <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="${cpath }/cctv.do" class="active">CCTV</a></li>
					<li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
					<li><a href="${cpath }/community.do">커뮤니티</a></li>

					<c:choose>
						<c:when test="${loginEmp.emp_no eq '20220000'}">

							<li><a href="${cpath }/administrator.do">관리자 페이지</a></li>

						</c:when>
						<c:otherwise>

							<li><a href="#"> </a></li>

						</c:otherwise>
					</c:choose>
					<li><a class="get-a-quote" href="${cpath }/logout.do">Logout</a></li>

				</ul>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->




	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center"
				style="background-image: url('resources/assets/img/back.jpg')">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2 style="font-family: 'Do Hyeon', sans-serif;">CCTV</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->

		<!-- ======= 이벤트 알림 보여주는 공간 ======= -->
            
		
		<section id="about" class="about">
			<div class="container" data-aos="fade-up" style="text-align: center">
				<h3 style="text-align: center; font-family: 'Do Hyeon', sans-serif;">
				"${paging3.input }" 의 검색 결과입니다.</h3>
				<br>  
			<!-- 검색창 -->
            <div class="search-box">
               <form action="${cpath }/cctv_search.do" method="post">
                  <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요"
                     name="input">
                  <button class="search-btn" type="submit">
                     <i class="fas fa-search"></i>
                  </button>
               </form>
            </div>
            <!-- 검색창 끝 -->
				
				<br>
				<table class="table">
					<thead>
						<tr>
							<th scope="col" style="width: 20%">번호</th>
							<th scope="col">발생 상황 유형</th>
							<th scope="col" style="width: 35%">로그시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${searchlist}" var="search" varStatus="status">
							<tr>
								<td>${status.count+ (paging3.curPage-1)*10 }</td>
								<td><a href="${cpath }/cctv_view.do/${search.noti_no}">${search.noti_name }</a></td>
								<td>${search.noti_time }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
		<!-- 이벤트 알림 보여주는 공간 끝!! -->

	</main>
	<!-- End #main -->

	<!-- 페이징 -->
	<nav aria-label="Page navigation example"
		style="display: flex; align-items: flex-end; justify-content: center;">
		<ul class="pagination">
			<li class="page-item"><a class="page-link"
				href="${cpath }/cctv_search.do?curPage=1&input=${paging3.input }" aria-label="First"> <span
					aria-hidden="true">&laquo;</span>


					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_search.do?curPage=${paging3.curPage-1 }&input=${paging3.input }"
						aria-label="Previous"> <span aria-hidden="true">&lt</span> <c:forEach
								begin="${paging3.firstPage }" end="${paging3.lastPage }" var="i"></a></li>
					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_search.do?curPage=${i }&input=${paging3.input }"> <c:if
								test="${i eq paging3.curPage }">
								<span style="color: red"> ${i } </span>
							</c:if> <c:if test="${i ne paging3.curPage }">  ${i } </c:if>

					</a></li> </c:forEach>

					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_search.do?curPage=${paging3.curPage+1 }&input=${paging3.input }"
						aria-label="Next"> <span aria-hidden="true">&gt;</span>
					</a></li>
					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_search.do?curPage=${paging3.totalPageCount }&input=${paging3.input }"
						aria-label="Last"> <span aria-hidden="true">&raquo;</span>
					</a></li>
		</ul>
	</nav>
	<!-- 페이징 끝-->

	<!-- ======= Footer ======= -->
	<div></div>
	<br>
	<br>
	<div class="container mt-4" style="text-align: center;">
		<div class="copyright">
			&copy; Copyright <strong><span>Watcher</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</div>
	<br>
	<br>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script
		src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="resources/assets/vendor/aos/aos.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script>
</body>
</html>
