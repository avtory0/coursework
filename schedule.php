<!-- sql -->
<?php
        require("companents/bd.php");
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Расписание</title>
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
    <link rel="stylesheet" href="./css/forms.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <?php 
        require("companents/header.php");
    ?>

    <section class="sction discounts">
        <div class="sction_head">
            <div class="wrapper flex">
                <div class="discounts_title">Расписание</div>
            </div>
        </div>
    </section>

    <section class="sction wrapper schedule">
        <div class="schedule-list flex ">
            <?php
                $movies = get_movies();
                foreach ($movies as $movie):
            ?>
            <div class="item movies">
                <div class="content">
                    <div class="movies_posters">
                        <div class="movies_age-rating" data-rating="<?php echo $movie["rating"]?>">
                            <?php echo $movie["rating"]?></div>
                        <img class="movies_posters-image" src="<?php echo $movie["img"]?>" alt="">
                        <img class="movies_hposters" src="<?php echo $movie["h-img"]?>" alt="">
                    </div>
                    <div class="information">
                        <div class="title">
                            <a href=" <?php echo $movie["links"]?>">
                                <h3 class="movies-name"><?php echo $movie["name"]?></h3>
                            </a>
                        </div>
                        <div class="info">
                            <div class="info_item"><span><?php echo $movie["genre"]?></span></div>
                            <div class="info_item"><span><?php echo $movie["info"]?></span></div>
                        </div>
                        <div class="seances">
                            <div class="seances_inner">
                                <div class="head">
                                    <span><?php echo $movie["seance"]?></span>
                                </div>
                                <div class="seances_content">
                                    <button class="btn_time btn-overplay">
                                        <span>11:40</span>
                                        <div class="price" id="price">6р</div>
                                    </button>

                                    <button class="btn_time">
                                        <span>15:30</span>
                                        <div class="price" id="price">6р</div>
                                    </button>

                                    <button class="btn_time">
                                        <span>21:00</span>
                                        <div class="price" id="price">8р</div>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>

        <div class="overplay  js-overlay">

            <div class="popup front  js-popup">
                <div class="scene">
                    <div class="card">
                        <div class="card_face front">
                            <div class="mvsnm"></div>
                            <div class="aa">
                                <div class="result">
                                    <div class="urchoise">Вы выбрали:</div>
                                </div>
                                <div class="cinemaHall  zal1"></div>
                            </div>

                            <div class="hall_discription">
                                <div class="typesofseats">
                                    <h3 class="type">Типы мест</h3>
                                    <div class="types_inner">
                                        <div class="seat "></div>
                                        <span>Свободно</span>
                                    </div>
                                    <div class="types_inner">
                                        <div class="seat safezone "></div>
                                        <span>Safe Seats. Места забронированы для ваших безопасности и комфорта</span>
                                    </div>
                                </div>

                                <div class="tickets_button">
                                    <a class="button flip"> Заказать билет </a>
                                </div>
                            </div>
                        </div>
                        <div class="card_face back">
                            <div class="informaiton">
                                <h1>Введите ваши данные</h1>
                            </div>
                            <form class="tickets_form" id="ticket">
                                <input type="name" autocomplete="off" id="" name="user_name"
                                    placeholder="Введите ваше имя" type="text" require>
                                <input type="email" autocomplete="off" id="" name="user_email"
                                    placeholder="Введите ваш E-mail" type="text" require>
                                <div class="navigation">
                                    <button class=" button getback">Вернуться к выбору места</button>
                                    <button type="submit" class="discount_button send "> отправить письмо</button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
                <div class="close_popup btn-close"></div>
            </div>


        </div>

    </section>
    <?php 
    require("companents/feedback.php")
    ?>

    <?php 
        require("companents/footer.php")
    ?>

    <!-- js library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- user's scripts -->
    <script src="./js/common.js"></script>

</body> 

</html>