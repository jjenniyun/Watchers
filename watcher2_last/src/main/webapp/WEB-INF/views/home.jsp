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

    <title>Logis Bootstrap Template - Index</title>
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
    <!-- 아이콘 -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
      integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

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
        <a href="#" class="logo d-flex align-items-center">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1>Watcher</h1>
        </a>

        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
        <nav id="navbar" class="navbar">
          <ul>
            <li><a href="<c:url value='#'/>" class="active">Home</a></li>
            <li><a href="<c:url value='#'/>">CCTV</a></li>
            <li><a href="#">영상 기록</a></li>
            <li><a href="<c:url value='#'/>">커뮤니티</a></li>
            <li><a href="<c:url value='#'/>"> </a></li>
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="hero d-flex align-items-center">
      <div class="container">
        <div class="row gy-4 d-flex justify-content-center">
          <div
            class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center"
          >
            <!-- ======= 로그인 폼 ======= -->
            <section class="main-section">
              <form action="${cpath}/Login.do" method="post"              
                class="form-search d-flex align-items-center mb-3"
                data-aos="fade-up"
                data-aos-delay="200"
                style="width: 400px; height: 400px"
              >
                <div>
                  <form class="main-container">
                    <div>
                      <h1 style="color: #040454; font-family: 'Do Hyeon', sans-serif;">Watcher</h1>
                    </div>
                    <br>
                    <div>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span
                            class="input-group-text"
                            id="basic-addon1"
                            style="font-size: 1.5rem"
                            ><i class="fa-solid fa-user"></i
                          ></span>
                        </div>
                        <input name="emp_no"
                          type="text"
                          class="form-control"
                          placeholder="사번을 입력하세요."
                          aria-label="Username"
                          aria-describedby="basic-addon1"
                        />
                      </div>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span
                            class="input-group-text"
                            id="basic-addon1"
                            style="font-size: 1.5rem"
                            ><i class="fa-solid fa-key"></i
                          ></span>
                        </div>
                        <input name="emp_pw"
                          type="password"
                          class="form-control"
                          placeholder="비밀번호를 입력하세요."
                          aria-label="Username"
                          aria-describedby="basic-addon1"
                        />
                      </div>
                    </div>
                    <br />
                    <div>
                      <button
                        type="submit"
                        class="btn btn-primary btn-sm"
                        
                        style="background-color: #0d219b; font-size: 15pt; " onclick="">
                        Login 
                      </button>
                    </div>
                  </form>
                </div>
              </form>
            </section>
          </div>

          <div class="col-lg-5 order-1 order-lg-2 hero-img" data-aos="zoom-out">
            <img
              src="resources/assets/img/logo3.png"
              class="img-fluid mb-3 mb-lg-0"
              alt=""
              style="margin-top: 40px"
            />
          </div>
        </div>
      </div>
    </section>
    <!-- End Hero Section -->

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
