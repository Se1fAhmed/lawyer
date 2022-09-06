<?php
 session_start(); 
 include "../genral/Userlogin.php";

 $conn = mysqli_connect("localhost","root","","hima");

 $select  = "SELECT * FROM `articles` ORDER BY `articles`.`data` DESC ";
  $s = mysqli_query($conn, $select);

  $select = "SELECT * FROM lawyers";
  $l = mysqli_query($conn, $select);


?>








<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Gp Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="./assets/img/favicon.png" rel="icon">
  <link href="./assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="./assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="./assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="./assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="./assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="./assets/css/style.css" rel="stylesheet">

</head>

<body>

      <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.html">Law<span></span></a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#Articles">Articles</a></li>
          <li><a class="nav-link scrollto" href="#Lawyers">Lawyers</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->
    <a href="/hima/user/login.php" class="get-started-btn scrollto">Signout</a>

    </div>
  </header><!-- End Header -->


  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-8 col-lg-8">
          <h1>Get your lawyer now<span>.</span></h1>
          <h2>We are team of talented lawyers</h2>
          <a href="#Lawyers" class="get-started-btn scrollto mt-5">Get Your Lawyer</a>

        </div>
      </div>
    </div>
  </section><!-- End Hero -->



    <!-- ======= articles Section ======= -->
    <section id="Articles" class=" align-items-center justify-content-center">
    <h1 style="text-align:center;">Articles</h1>
    <?php foreach ($s as $data) { ?>
    <div style="width :60%; background:#fff; border-radius: 6px; padding: 20px; color: #626262; margin: auto;
" class="container col-8 p-5 ">
        <div class="card p-5">
            <div card-body>
                <p style="line-height: 0 ;color: black  ;"><?php echo $data['auther'] ?></p>
                <span style = "font-size: 13px; color: #9a9a9a;"><?php echo $data['data'] ?></span>
                <h3 style="text-align:center;"><?php echo $data['title'] ?></h3>
                <p style="color: black ;"><?php echo $data['desciption'] ?></p>
                <img class="img-top w-100" src="../articles/upload/<?= $data['image'] ?>" alt="">
            </div>
        </div>
    </div>
    <?php } ?>
    </section>


        <!-- End articles -->


    <!-- ======= Lawyers Section ======= -->
    <section id="Lawyers" class=" justify-content-center  align-items-center ">
    <h1 style="text-align:center;">Lawyers</h1>
        <div  class="row">
            <div  class="container col-10 p-5">
                <div class="card">
                    <div  class="card-body">
                        <table    class="  table datatable">
                            <thead style="text-align:center;">
                                <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($l as $data) { ?>
                                    <tr style="text-align:center;">
                                        <td><?= $data['name'] ?> </td>
                                        <td><?= $data['email'] ?> </td>
                                        <td> <a href="/hima/user/Message.php?message=<?= $data['id'] ?> " class="btn btn-info"> Send Message</a> </td>
                                    </tr>
                                <?php  } ?>
                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->

                    </div>
                </div>

            </div>
        </div>
    </section>


        <!-- End Lawyers -->











    <!-- Vendor JS Files -->
    <script src="./assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="./assets/vendor/aos/aos.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="./assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="./assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="./assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/js/main.js"></script>

</body>

</html>
