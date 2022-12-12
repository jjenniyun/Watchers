<%@page import="kr.cctv.entity.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%
	// jstl에서는 \n 인식이 힘들기 때문에 자바코드로 \n을 저장(pageContext)
pageContext.setAttribute("newline", "\n");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>Logis Bootstrap Template - About</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
<script type="text/javascript">
	function goUpdate() {
		location.href = "${cpath}/boardUpdateForm.do?bo_no=${vo.bo_no}"
	}
	function goDelete() {
		location.href = "${cpath}/boardDelete.do/${vo.bo_no}"
	}
</script>
</head>

<body>

	<!-- Modal- 삭제확인 -->
	<div class="modal fade" id="dialog_" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">알림창</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">정말로 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="goDelete()">&nbsp;&nbsp;&nbsp;&nbsp;예&nbsp;&nbsp;&nbsp;&nbsp;</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">아니오</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal- 삭제확인 end-->
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
					<li><a href="${cpath }/cctv.do">CCTV</a></li>
					<li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
					<li><a href="${cpath }/community.do" class="active">커뮤니티</a></li>
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
				<input type="hidden" name="bo_no" value="${vo.bo_no }">
				<h4 style="text-align: center; font-family: 'Do Hyeon', sans-serif;">게시물
					수정</h4>
				<br /> <br />
				<!-- 게시물 작성 화면 폼  -->
				<table class="table table-bordered"
					style="text-align: center; vertical-align: middle">
					<thead>
						<tr>
							<th scope="col" style="width: 102.989282px">제 목</th>
							<td scope="col" colspan="3">${vo.bo_title}</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" style="height: 416px">내 용</th>
							<td colspan="3" style="text-align: left;">${fn:replace(vo.bo_content,newline,"<br>") }</td>
						</tr>
						<!-- <tr>
							<th scope="row" style="height: 50px">일 시</th>
							<td colspan="3">${vo.bo_date}</td>
						</tr> -->
					</tbody>
				</table>
				<c:choose>
					<c:when test="${loginEmp.emp_no eq vo.emp_no}">
						<!-- 게시물 작성 화면 폼  -->
						<div class="d-grid gap-2 d-md-block" style="text-align: center">
							<button class="btn btn-primary" type="button"
								onclick="goUpdate()" data-bs-toggle="modal"
								data-bs-target="#dialog">수 정</button>
							<div class="space"></div>
							<button class="btn btn-danger" type="button"
								data-bs-toggle="modal" data-bs-target="#dialog_">삭 제</button>
							<div class="space"></div>
							<button class="btn btn-secondary" type="button"
								onclick="location.href='${cpath }/community.do'">취
								소</button>
						</div>

					</c:when>
					<c:otherwise>
						<div class="d-grid gap-2 d-md-block" style="text-align: center">
							<button class="btn btn-primary" type="button"
								onclick="location.href='${cpath }/community.do'">목
								록</button>
					</c:otherwise>
				</c:choose>


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
