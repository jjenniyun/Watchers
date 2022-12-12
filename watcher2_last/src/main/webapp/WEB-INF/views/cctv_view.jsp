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
    <link href="${cpath }/resources/assets/img/favicon.png" rel="icon" />
    <link href="${cpath }/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="${cpath }/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="${cpath }/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="${cpath }/resources/assets/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="${cpath }/resources/assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link href="${cpath }/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <link href="${cpath }/resources/assets/vendor/aos/aos.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="${cpath }/resources/assets/css/main.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: Logis - v1.2.1
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
    </style>
		<script type="text/javascript">
			function notiDelete() {
				location.href = "${cpath}/notiDelete.do/${noti.noti_no}"
			}
		</script>    
    
  </head>

  <body>

      <!-- Modal -->
        <div class="modal fade" id="dialog" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">알림창</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
              정말로 삭제하시겠습니까?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="notiDelete()">&nbsp;&nbsp;&nbsp;&nbsp;예&nbsp;&nbsp;&nbsp;&nbsp;</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
              </div>
          </div>
          </div>
        </div>
      <!-- Modal end-->
    
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
            <li><a href="${cpath }/cctv.do"  class="active">CCTV</a></li>
            <li><a href="${cpath }/cctv_event.do">영상 기록</a></li>
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
          style="background-image: url('${cpath }/resources/assets/img/back.jpg')"
        >
          <div class="container position-relative">
            <div class="row d-flex justify-content-center">
              <div class="col-lg-6 text-center">
                <h2>CCTV</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Breadcrumbs -->
      <p style="margin-top: 100px"></p>
      <h4 style="text-align: center; font-family: 'Do Hyeon', sans-serif;" >영상 확인</h4>
      <!-- ======= cctv 영상 화면 보여주는 공간 ======= -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up">
          <!-- cctv 영상 화면 폼  -->
          <table
            class="table table-bordered"
            style="text-align: center; vertical-align: middle"
          >
            <thead>
              <tr>
                <th scope="col" style="width: 102.989282px">상황</th>
                <td scope="col" colspan="3">${noti.noti_no }. ${noti.noti_name }</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row" style="height: 416px">발생 상황 화면</th>
                <td colspan="3">
                <img style="width: 700px" src="${cpath}/resources/img/vimg${noti.noti_no }.jpg">
                
                </td>
              </tr>
              <tr>
                <th scope="row" style="height: 50px">일 시</th>
                <td colspan="3">${noti.noti_time }</td>
              </tr>
            </tbody>
       
          </table>
          <!-- cctv 영상 화면 폼 끝 -->
          <div class="den" style="margin-left: 570px;">
          <c:choose>
          <c:when test="${loginEmp.emp_no eq '20220000'}">
            <!-- 모달창 오픈 버튼-->
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#dialog">삭 제</button>
            <div class="space"></div>
            <button type="button" class="btn btn-primary" 
            onclick="location.href='${cpath }/cctv_event.do'">취 소</button>
        	</div>
          </c:when>
          <c:otherwise>
		   <button type="button" class="btn btn-primary" 
		   onclick="location.href='${cpath }/cctv_event.do'">목 록</button>
        	</div>        			
		              
		  </c:otherwise>
		  </c:choose>
        
        
        
                    
      </section>
      <!-- cctv 영상 화면 보여주는 공간 끝 -->
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
    <script src="${cpath }/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${cpath }/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="${cpath }/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="${cpath }/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="${cpath }/resources/assets/vendor/aos/aos.js"></script>
    <script src="${cpath }/resources/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="${cpath }/resources/assets/js/main.js"></script>

    <!--modal-->
    <script>
      var myModal = document.getElementById('myModal')
      var myInput = document.getElementById('myInput')

      myModal.addEventListener('shown.bs.modal', function () {
      myInput.focus()
      })
    </script>

    <!-- 모달 데이터 삭제 -->


  </body>
</html>
