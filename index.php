<!-- sql -->
<?php
    require("companents/bd.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Palace of arts</title>

    <link rel="shortcut icon" href="./img/mainimg/ico.svg" type="image/x-icon">

    <!-- fonts, icons etc.. -->
    <link
        href="https://fonts.googleapis.com/css2?family=Oswald&family=Roboto&family=Montserrat:ital,wght@0,400;1,300&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- css -->
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/button.css">
    <link rel="stylesheet" href="./css/headnfoot.css">
    <link rel="stylesheet" href="./css/movies.css">

    <link rel="stylesheet" href="./libs/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="./libs/owlcarousel/assets/owl.theme.default.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <!-- <div id="cube-loader">
        <div class="caption">
            <div class="cube-loader">
                <div class="cube loader-1"></div>
                <div class="cube loader-2"></div>
                <div class="cube loader-4"></div>
                <div class="cube loader-3"></div>
            </div>
        </div>
    </div> -->
    <?php 
    require("companents/main-header.php");
   ?>


    <section class="slider sction">
        <div class="sction_wrapper">
            <div class="sction_content">

                <div class="header_slider owl-carousel owl-theme">
                <?php
                    $sldr  = get_slider();
                foreach ($sldr as $slider):
                ?>
                    <div class="slider_slide">
                    <a href="<?php echo $slider["link"]?>" class="hide_bnt"></a>
                        <div div class="slider_content">
                            <div class="slider_text">
                                <div class="slider_title"><?php echo $slider["title"]?></div>
                                <a href="<?php echo $slider["link"]?>" class="button "> Подробнее</a>
                            </div>
                        </div>
                        <div class="slider_bg" style="background-image: url(<?php echo $slider["slide_img"]?>);"></div>

                    </div>
                <?php endforeach; ?>


                   

                </div>

            </div>
        </div>
    </section>

    <div class=" movies wrapper">

        <div class="movies_head ">
            <h1 class="movies_title">Сегодня в кино</h1>
        </div>

            <div class="movies_inner  flex">

                <?php
                        $movies = get_movies();
                    foreach ($movies as $movie):
                    ?>
                <div class="movies_item">
                    <div class="content">
                        <div class="movies_posters">
                            <div class="movies_age-rating" data-rating="<?php echo $movie["rating"]?>">
                                <?php echo $movie["rating"]?></div>
                            <a href="<?php echo $movie["links"]?>">
                                <img class="movies_posters-image" src="<?php echo $movie["img"]?>" alt="">
                                <img class="movies_hposters" src="<?php echo $movie["h-img"]?>" alt="">
                            </a>
                        </div>

                        <div class="movies_description">
                            <div class="movies_name"><?php echo $movie["name"]?></div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>



            </div>


    </div>

    <section class="sction films">
        <div class="films_head sction_wrapper">
            <div class="films_title">Фильмы в прокате</div>
        </div>

        <div class="films_slider owl-carousel owl-theme">
            <?php
                    $movies = get_movies();
                foreach ($movies as $movie):
                ?>
            <div class="films_item">
                <img src="<?php echo $movie["img"]?>" alt="" class="films_item-bg">

                <div class="films_item-info">
                    <div class="films_item-rating"><?php echo $movie["rating"]?></div>
                    <div class="films_item-content">
                        <div class="films_item-name">
                            <?php echo $movie["name"]?>
                        </div>
                        <div class="films_item-genre">
                            <span><?php echo $movie["genre"]?></span>
                        </div>
                        <div class="films_item-duration"><?php echo $movie["info"]?></div>
                    </div>
                    <a href="<?php echo $movie["links"]?>" class="button films_item-button">Подробнее</a>
                </div>
            </div>
            <?php endforeach; ?>


        </div>

    </section>

    <section class="sction discounts">
        <div class="sction_wrapper wrapper ">

            <div class="discounts_content ">
                <div class="discounts_title">Акции и новости</div>

                <div class="discounts_item flex">
                    <img class="item_img" src="./img/discounts/3.jpg" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Страшное предложение</div>
                            <div class="item_text">
                                Вас ждет очень страшное предложение
                            </div>
                            <a href="discounts.php" class="button">Подробнее</a>
                        </div>
                    </div>
                </div>

                <div class="discounts_item flex">
                    <img class="item_img" src="./img/discounts/4.jpg" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Ждем вас в наших социальных сетях</div>
                            <div class="item_text">

                            </div>
                            <a href="discounts.php"  class="button">Подробнее</a>
                        </div>
                    </div>
                </div>

                <div class="discounts_more">
                    <a class="discount_button" href="discounts.php">
                        <i class="fa fa-comments" aria-hidden="true"></i> Все акции и новости</a>
                </div>

            </div> <!-- discounts_content -->

        </div> <!-- sction_wrapper -->
    </section>


    <?php
        require("companents/footer.php");
    ?>

    <!-- js-library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="./libs/owlcarousel/owl.carousel.min.js"></script>

    <!-- user scripts -->
    <script src="./js/slider.js"></script>
    <script src="./js/common.js"></script>




</body>

</html>