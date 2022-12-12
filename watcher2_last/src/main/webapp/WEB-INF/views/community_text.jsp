<%@page import="kr.cctv.entity.Board"%>
<%@page import="java.util.List"%>
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
<link href="${cpath }/resources/assets/img/favicon.png" rel="icon" />
<link href="${cpath }/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon" />

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link
	href="${cpath }/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${cpath }/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link
	href="${cpath }/resources/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" />
<link
	href="${cpath }/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet" />
<link
	href="${cpath }/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet" />
<link href="${cpath }/resources/assets/vendor/aos/aos.css"
	rel="stylesheet" />

<!-- Template Main CSS File -->
<link href="${cpath }/resources/assets/css/main.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 폰트 -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
</style>

<!-- =======================================================
  * Template Name: Logis - v1.2.1
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- 등록 Modal -->
	
	<div class="modal fade" id="dialog" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">알림창</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">등록이 완료되었습니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
		<!-- 등록 Modal 끝 -->
		
		<!-- 취소 Modal -->
	<div class="modal fade" id="dialog1" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">알림창</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">등록이 완료되었습니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 취소 Modal end 끝-->



	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">
			<a href="#" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="${cpath }/resources/assets/img/logo.png" alt=""> -->
				<h1>Watcher</h1>
			</a> <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="${cpath }/cctv.do">CCTV</a></li>
					<li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
					<li><a href="${cpath }/community.do" class="active">커뮤니티</a></li>
					
		<c:choose>
			<c:when test="${loginEmp.emp_no eq '20220000'}">            
           
            <li><a href="${cpath }/administrator.do">관리자 페이지</a></li>
        
            </c:when>
            <c:otherwise>
            				
       		<li><a href="#"> </a> </li>
              
            </c:otherwise>
		</c:choose>					
					
					<li><a class="get-a-quote" href="${cpath }/logout.do">Logout</a></li>
				</ul>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->
	<!-- End Header -->

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center"
				style="background-image: url('${cpath }/resources/assets/img/back.jpg')">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2 style="font-family: 'Do Hyeon', sans-serif;">커뮤니티</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->

		<!-- ======= 게시물 작성 보여주는 공간 ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">
				<h4 style="text-align: center; font-family: 'Do Hyeon', sans-serif;">게시물
					작성</h4>
				<br /> <br />
				<!-- 게시물 작성 화면 폼  -->
				<form action="${cpath }/boardInsert.do" method="post">
					<table class="table table-bordered"
						style="text-align: center; vertical-align: middle">
						<thead>
							<tr>
								<th scope="col" style="width: 102.989282px">제 목</th>
								<td scope="col" colspan="3"><input type="text" name="bo_title"
									class="form-control" id="title" placeholder="제목"></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" style="height: px">분류</th>

						<c:choose>
							<c:when test="${loginEmp.emp_no eq '20220000'}">            
				           
								<td colspan="1"><input type="radio" name="bo_type"
									value="1">공지사항</td>
								<td colspan="1"><input type="radio" name="bo_type"
									value="2">공유사항</td>

							</tr>
				        
				            </c:when>
				            <c:otherwise>
				            				
					       		<td colspan="1">
					       		<input type="hidden" name="bo_type" value="2">
					       		공유사항</td>
				              
				            </c:otherwise>
						</c:choose>	
															
							<tr>
								<th scope="row" style="height: 416px">내 용</th>
								<td colspan="3" style="text-align: left;"><textarea rows="15" class="form-control"
										id="content" name="bo_content"></textarea></td>
							</tr>
						</tbody>

					</table>

					<!-- 게시물 작성 화면 폼  -->
					
					<input type="hidden" name="emp_no" value="${loginEmp.emp_no}">
					<div class="den" style="text-align: center">
						<button type="submit" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#dialog">등록</button>	
						<div class="space"></div>	
						<button type="button" class="btn btn-danger"
						onclick="location.href='${cpath }/community.do'" class="active">						
							취소</button>
					</div>
					</form>
				
			</div>
		</section>

		<!-- 게시물 작성 보여주는 공간 끝 -->
	</main>
	<!-- End #main -->

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
		src="${cpath }/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${cpath }/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script
		src="${cpath }/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="${cpath }/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${cpath }/resources/assets/vendor/aos/aos.js"></script>
	<script
		src="${cpath }/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${cpath }/resources/assets/js/main.js"></script>

	<!--modal-->
	<script>
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')

		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>
</body>
</html>
