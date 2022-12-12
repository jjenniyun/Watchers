<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
<link href="resources/assets/css/employee_list.css" rel="stylesheet" />


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


<script>
	
</script>

</head>

<body>

	<!-- Modal -->
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
				<div class="modal-body">정말로 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="goDelete()">&nbsp;&nbsp;&nbsp;&nbsp;예&nbsp;&nbsp;&nbsp;&nbsp;</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">아니오</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal end-->

	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">
			<a href="#" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="resources/assets/img/logo.png" alt=""> -->
				<h1>Watcher</h1>
			</a> <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="${cpath }/cctv.do">CCTV</a></li>
					<li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
					<li><a href="${cpath }/community.do">커뮤니티</a></li>					
					<li><a href="${cpath }/administrator.do">관리자 페이지</a></li>			
					<li><a class="get-a-quote" href="${cpath }/logout.do">Logout</a></li>
				</ul>
				<meta name="viewport" content="width=device-width, initial-scale=1" />
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
				style="background-image: url('resources/assets/img/back.jpg')">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2 style="font-family: 'Do Hyeon', sans-serif;">관리자 페이지</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->

		<!-- ======= About Us Section ======= -->

      <!-- End About Us Section -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up"></div>
      </section>
      <div id="community">
        <div id="bar">
          <ul>
            <li>
              <a href="${cpath }/administrator.do">관리자 정보</a>
            </li>
            <li><a href="${cpath }/employee.do">근무자등록</a></li>
            <li>
              <a href="${cpath }/employee_list.do" class="active">근무자관리</a>
            </li>
            <li><a href="${cpath }/cctv_list.do">영상관리</a></li>
          </ul>
        </div>
        <hr />
        <div id="board">
          <h4 style="font-family: 'Do Hyeon', sans-serif;">근무자 관리</h4>
          <br>
          <table class="table" style="max-width: 800px">
            <thead>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">이름</th>
                <th scope="col">사번</th>
                <th scope="col">연락처</th>
                <th scope="col">관리</th>
              </tr>
            </thead>            
            <tbody>
            
            <c:forEach items="${empList}" var="empList" varStatus="status">           
              <tr>
                <th scope="row">${status.count}</th>
                <th>${empList.emp_name }</th>
                <th>${empList.emp_no }</th>
                <th>${empList.emp_phone }</th>
                <th><div class="d-grid gap-2 d-md-block" style="text-align: center">

                  <form action="${cpath}/empSelect.do" method="post">
                  <input type="hidden" name="emp_no" value="${empList.emp_no}">
                  <button class="btn btn-outline-danger" type="submit">바로가기</button>              	                

                  </form>
                </div></th>
              </tr>
            </c:forEach> 
            </tbody>
          </table>
        </div>
      </div>

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up"></div>
		</section>
		<!-- End About Us Section -->
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
		src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="resources/assets/vendor/aos/aos.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script>

	<!--modal-->
	<script>
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')

		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>

	<script>
		var $ = jQuery.noConflict();
		jQuery(document).ready(function($) {
			delete_confirmation_modal.init();
		});

		var delete_confirmation_modal = {
			init : function() {

				$('.modal-delete').on(
						'click',
						function() {
							$(this).closest('.modal').prev('form').attr(
									'data-submit', 'true');
							$('.confirm-delete-modal').trigger('click');
						});

				$('.modal-delete-cancel').on('click', function() {
					$(this).closest('.modal').removeClass('modal-show');
				});
			}
		}
	</script>
</body>
</html>
