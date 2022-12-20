<?php
$db = require 'db.php';
$recipes_id = $_GET['recipes_id'];

$recipes=$db->query("SELECT  recipes.name as recipes_name, recipes.category as recipes_category,
       recipes.time_needs as recipes_time_needs, recipes.small_descr as recipes_small_descr, recipes.big_descr as recipes_big_descr
FROM recipes
WHERE recipes.id={$recipes_id}")->fetch(PDO::FETCH_ASSOC);
$tags=$db->query("SELECT  tags_recipes.id, tags_recipes.recipes_id, tags_recipes.tags_id, tags.tag as tag_name, recipes.name as recipes_name
FROM tags_recipes
    inner join  tags on tags.id = tags_recipes.tags_id 
    inner join recipes on recipes.id = tags_recipes.recipes_id 
WHERE recipes.id='{$recipes_id}'")->fetchAll(PDO::FETCH_ASSOC);
?>
<?php
$db = require 'db.php';
$cat_recipes=$db->query("SELECT id, name, category, time_needs FROM recipes where category='{$recipes['recipes_category']}' limit 3")->fetchAll(PDO::FETCH_ASSOC);
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tasty Recipes</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area ">
            <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-2">
                    <div class="logo">
                        <a href="index.php">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <div class="main-menu white_text  d-none d-lg-block">
                        <nav>
                            <ul id="navigation">
                                <li><a href="index.php">home</a></li>
                                <li><a href="about.html">about</a></li>
                                <li><a href="Recipes.php">Recipes</a></li>
                                <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="single-blog.html">single-blog</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="recipes_details.php">Recipes Details</a></li>
                                        <li><a href="elements.html">elements</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.php">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                    <div class="search_icon">
                        <a href="#">
                            <i class="ti-search"></i>
                        </a>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mobile_menu d-block d-lg-none"></div>
                </div>
            </div>

        </div>
    </div>
    </div>
</header>
<!-- header-end -->

<!-- bradcam_area  -->
<div class="bradcam_area bradcam_bg_1">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>Recipe Details</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /bradcam_area  -->

<div class="recepie_details_area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6 col-md-6">
                <div class="recepies_thumb">
                    <img src="/img/recepie/recccepie_<?=$recipes_id?>.png" alt="foto">
                </div>


            </div>

            <div class="col-xl-6 col-md-6">
                <div class="recepies_info">
                    <h3><?= $recipes['recipes_name']?></h3>
                    <p><?= $recipes['recipes_small_descr']?></p>

                    <div class="resepies_details">
                        <ul>
                            <li><p><strong>Rating</strong> : <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> </p></li>
                            <li><p><strong>Time</strong> : <?= $recipes['recipes_time_needs']?> </p></li>
                            <li><p><strong>Category</strong> : <?= $recipes['recipes_category']?> </p></li>
                            <li><p><strong>Tags</strong> :  <? foreach ($tags as $tag):?>
                                        <span><?= $tag['tag_name']?></span>
                                    <?php endforeach;?> </p></li>
                        </ul>
                    </div>
                    <div class="links">
                        <a href="#"> <i class="fa fa-facebook"></i> </a>
                        <a href="#"> <i class="fa fa-twitter"></i> </a>
                        <a href="#"> <i class="fa fa-linkedin"></i> </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="recepies_text">
                    <p><?= $recipes['recipes_big_descr']?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- recepie_area_start  -->
<div class="recepie_area inc_padding">
    <div class="container">
        <div class="row">
            <!--foreach-->
            <? foreach ($cat_recipes as $item):?>
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="single_recepie text-center">
                    <div class="recepie_thumb">
                        <img src="img/recepie/recccepie_<?= $item['id']?>.png" alt="">
                    </div>
                    <h3><?= $item['name']?></h3>
                    <span><?= $item['category']?></span>
                    <p><?= $item['time_needs']?></p>
                    <a href="recipes_details.php?recipes_id=<?=$item['id']?>" class="line_btn">View Full Recipe</a>
                </div>
            </div>
            <?endforeach;?>
        </div>
    </div>
</div>
<!-- /recepie_area_start  -->

<!-- footer  -->
<footer class="footer">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-md-6 col-lg-2">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            Top Products
                        </h3>
                        <ul>
                            <li><a href="#">Managed Website</a></li>
                            <li><a href="#"> Manage Reputation</a></li>
                            <li><a href="#">Power Tools</a></li>
                            <li><a href="#">Marketing Service</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-xl-2 col-md-6 col-lg-2">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            Quick Links
                        </h3>
                        <ul>
                            <li><a href="#">Jobs</a></li>
                            <li><a href="#">Brand Assets</a></li>
                            <li><a href="#">Investor Relations</a></li>
                            <li><a href="#">Terms of Service</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-xl-2 col-md-6 col-lg-2">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            Features
                        </h3>
                        <ul>
                            <li><a href="#">Jobs</a></li>
                            <li><a href="#">Brand Assets</a></li>
                            <li><a href="#">Investor Relations</a></li>
                            <li><a href="#">Terms of Service</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-xl-2 col-md-6 col-lg-2">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            Resources
                        </h3>
                        <ul>
                            <li><a href="#">Guides</a></li>
                            <li><a href="#">Research</a></li>
                            <li><a href="#">Experts</a></li>
                            <li><a href="#">Agencies</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-xl-4 col-md-6 col-lg-4">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            Subscribe
                        </h3>
                        <p class="newsletter_text">You can trust us. we only send promo offers,</p>
                        <form action="#" class="newsletter_form">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit"> <i class="ti-arrow-right"></i> </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copy-right_text">
        <div class="container">
            <div class="footer_border"></div>
            <div class="row align-items-center">
                <div class="col-xl-8 col-md-8">
                    <p class="copy_right">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="socail_links">
                        <ul>
                            <li>
                                <a href="#">
                                    <i class="ti-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="ti-twitter-alt"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-behance"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--/ footer  -->

<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>

<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>
</body>

</html>