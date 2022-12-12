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
    <link href="resources/assets/css/cctv_list.css" rel="stylesheet" />

        <!-- 폰트 -->
        <style>
          @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
        </style>
    <!-- =======================================================
  * Template Name: Logis - v1.2.1
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="header d-flex align-items-center fixed-top">
      <div
        class="container-fluid container-xl d-flex align-items-center justify-content-between"
      >
        <a href="#" class="logo d-flex align-items-center">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1>Watcher</h1>
        </a>

        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
        <nav id="navbar" class="navbar">
          <ul>       
            <li><a href="<c:url value='/cctv.do'/>">CCTV</a></li>
            <li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
            <li><a href="<c:url value='/community.do'/>">커뮤니티</a></li>
            <li>
              <a href="<c:url value='/administrator.do'/>" class="active">관리자 페이지</a>
            </li>
            <li><a class="get-a-quote" href="<c:url value='/logout.do'/>">Logout</a></li>
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
        <div
          class="page-header d-flex align-items-center"
          style="background-image: url('resources/assets/img/back.jpg')"
        >
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
              <a href="${cpath }/employee_list.do">근무자관리</a>
            </li>
            <li><a href="${cpath }/cctv_list.do" class="active">영상관리</a></li>
          </ul>
        </div>
        <hr />
        <div id="board">
          <h4 style="font-family: 'Do Hyeon', sans-serif;">영상 관리</h4>
          <br>
          <table class="table" style="max-width: 800px">
            <thead>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">발생 상황 유형</th>
                <th scope="col">로그시간</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${nlist}" var="noti" varStatus="status">
            
              <tr>
                <th scope="row">${status.count }</th>
                <th><a href="${cpath }/cctv_remove.do/${noti.noti_no }">${noti.noti_name}</a></th>
                <th>${noti.noti_time }</th>
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
    
	<!-- 페이징 -->
	<nav aria-label="Page navigation example"
		style="display: flex; align-items: flex-end; justify-content: center;">
		<ul class="pagination">
			<li class="page-item"><a class="page-link"
				href="${cpath }/cctv_list.do?curPage=1" aria-label="First"> 
				<span aria-hidden="true">&laquo;</span>

					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_list.do?curPage=${paging2.curPage-1 }"
						aria-label="Previous"> <span aria-hidden="true">&lt</span> 
					<c:forEach begin="${paging2.firstPage }" end="${paging2.lastPage }" var="i"></a></li>
					<li class="page-item">
					<a class="page-link" href="${cpath }/cctv_list.do?curPage=${i }"> 
					<c:if test="${i eq paging2.curPage }">
						<span style="color: red"> ${i } </span> </c:if> 
					<c:if test="${i ne paging2.curPage }">  ${i } </c:if>
					</a></li> 
					</c:forEach>

					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_list.do?curPage=${paging2.curPage+1 }"
						aria-label="Next"> <span aria-hidden="true">&gt;</span>
					</a></li>
					<li class="page-item"><a class="page-link"
						href="${cpath }/cctv_list.do?curPage=${paging2.totalPageCount }"
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
