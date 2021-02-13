<?php 
    require "companents/bd.php";
    $movie = get_movie_by_id($_GET['id']); 
   
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <link rel="shortcut icon" href="./img/mainimg/ico.svg" type="image/x-icon">

    <!-- fonts, icons etc.. -->
    <link
        href="https://fonts.googleapis.com/css2?family=Oswald&family=Roboto&family=Montserrat:ital,wght@0,400;1,300&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="./css/headnfoot.css">
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/maket.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        require("companents/header.php")
    ?>

    <section class="sction ">
        <div class="sction_head" style=" background-image: url(<?php echo $movie["gallery2"]?>); ">
        </div>
    </section>

    <div class="maket wrapper ">
        <div class="maket_container  flex">
            <div class="maket_content">
                <div class="maket_media">
                    <img src="<?php echo $movie["main_img"]?>" alt="">
                </div>
                <div class="maket_age">
                    <div class="maket_age-ratting" data-rating="<?php echo $movie["rating"]?>">
                        <?php echo $movie["rating"]?></div>
                </div>
                <div class="maket_title">
                    <h1><?php echo $movie["title"]?></h1>
                </div>
                <div class="maket_value">

                    <div class="maket_item">
                        <div class="title">
                            Дата премьеры
                        </div>
                        <div class="value">
                            <?php echo $movie["premiere"]?>
                        </div>
                    </div>
                    <div class="maket_item">
                        <div class="title">
                            Жанр
                        </div>
                        <div class="value">
                            <?php echo $movie["genre"]?>
                        </div>
                    </div>
                    <div class="maket_item">
                        <div class="title">
                            Режиссер
                        </div>
                        <div class="value">
                            <?php echo $movie["producer"]?>
                        </div>
                    </div>
                    <div class="maket_item">
                        <div class="title">
                            В ролях
                        </div>
                        <div class="value">
                            <?php echo $movie["actors"]?>
                        </div>
                    </div>
                    <div class="maket_item">
                        <div class="title">
                            Страна
                        </div>
                        <div class="value">
                            <?php echo $movie["country"]?>
                        </div>
                    </div>
                    <div class="maket_item">
                        <div class="title">
                            Время
                        </div>
                        <div class="value">
                            <?php echo $movie["duration"]?>
                        </div>
                    </div>

                </div>

            </div>
            <div class="main flex">
                <div class="description">
                    <div class="description_title">
                        <h1>Описание</h1>
                    </div>
                    <div class="description_content">
                        <p> <?php echo $movie["description"]?> </p>
                    </div>
                </div>
                <div class="gallery">
                    <div class="gallery_title">
                        <h1>Кадры</h1>
                    </div>
                    <div class="gallery_inner">
                        <div class="gallery_item">
                            <img class="js-gallery" src="<?php echo $movie["gallery1"]?>" alt="">
                        </div>
                        <div class="gallery_item">
                            <img class="js-gallery" src="<?php echo $movie["gallery2"]?>" alt="">
                        </div>
                        <div class="gallery_item">
                            <img class="js-gallery" src="<?php echo $movie["gallery3"]?>" alt="">
                        </div>
                        <div class="gallery_item">
                            <img class="js-gallery" src="<?php echo $movie["gallery4"]?>" alt="">
                        </div>

                        
                    </div>
                    
                </div>
                <div class="trailer">
                    <div class="trailer_title">
                        <h1>Трейлер</h1>
                    </div>
                    <div class="trailer_content">
                        <iframe width="680" height="315" src="<?php echo $movie["trailer"]?>" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="lightbox">
                <div class="overlay"></div>
                <figure class="figure">
                    <span class="prev">← prev</span>
                    <span class="next">next →</span>
                    <img class="popimg" src="#">
                </figure>
            </div>


    </div>

    <?php 
        require("companents/footer.php")
    ?>
    <!-- js-library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- user scripts -->
    <script src="./js/common.js"></script>
</body>

</html>