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
    <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="resources/assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
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
        @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
      </style>
  </head>

  <body>
  
    <!-- ======= Header ======= -->
    <header id="header" class="header d-flex align-items-center fixed-top">
      <div
        class="container-fluid container-xl d-flex align-items-center justify-content-between"
      >
        <a href="index.html" class="logo d-flex align-items-center">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1>Watcher</h1>
        </a>

        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
        <nav id="navbar" class="navbar">
          <ul>
             <li><a href="${cpath }/cctv.do"  class="active">CCTV</a></li>
             <li><a href="${cpath }/community.do">커뮤니티</a></li>
            
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


		

    <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <div class="breadcrumbs">
        <div
          class="page-header d-flex align-items-center"
          style="background-image: url('resources/assets/img/back.jpg')"
        >
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

      <!-- ======= cctv 화면 보여주는 공간 ======= -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up">
          <h3 style="text-align: center; font-family: 'Do Hyeon', sans-serif;">영상 화면</h3>          
          <br>
          <!-- cctv 화면  -->

               <p>${test1}</p>

          <!-- cctv 화면 끝  -->
        </div>
      </section>
      <!-- cctv 화면 보여주는 공간 끝!! -->

      <!-- ======= 이벤트 알림 보여주는 공간 ======= -->
      <section id="about" class="about" style="background-color: #f6f7f9;">
        <div class="container" data-aos="fade-up" style="text-align:center">
          <h3 style="text-align: center; font-family: 'Do Hyeon', sans-serif;">영상 알림</h3>

          <table class="table">
            <thead>
              <tr>
                <th scope="col" style="width: 20%">번호</th>
                <th scope="col">화면캡처</th>
                <th scope="col" style="width: 35%">로그시간</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td><a href="${cpath }/cctv_view">Mark</a></td>
                <td>#</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td><a href="cctv_view.html">Mark</a></td>
                <td>#</td>
              </tr>
            </tbody>
          </table>
        </div>
      </section>
      <!-- 이벤트 알림 보여주는 공간 끝!! -->
    </main>
    <!-- End #main -->

        <!-- ======= Footer ======= -->
        <div></div>
        <br>
        <br>
        <div class="container mt-4" style="text-align: center;">
          <div class="copyright">
            &copy; Copyright <strong><span>Watcher</span></strong
            >. All Rights Reserved
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

    <a
      href="#"
      class="scroll-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="resources/assets/vendor/aos/aos.js"></script>
    <script src="resources/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="resources/assets/js/main.js"></script>
  </body>
</html>
