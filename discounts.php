<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Акции и новости</title>
    
    <link rel="shortcut icon" href="./img/mainimg/ico.svg" type="image/x-icon">

    <!-- fonts, icons etc.. -->
    <link
        href="https://fonts.googleapis.com/css2?family=Oswald&family=Roboto&family=Montserrat:ital,wght@0,400;1,300&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <!-- css -->
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/button.css">
    <link rel="stylesheet" href="./css/headnfoot.css">
    <link rel="stylesheet" href="./css/forms.css">

</head>

<body>
    <?php 
        require("companents/header.php");
    ?>

    <section class="sction discounts">
        <div class="sction_head">
            <div class="wrapper flex">
                <div class="discounts_title">Акции и новости</div>
            </div>
        </div>
        <div class="sction_wrapper wrapper">

            <div class="discounts_content">


                <div class="discounts_item flex wow animate__animated animate__fadeInLeft">
                    <img class="item_img" src="./img/discounts/3.jpg" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Страшное предложение</div>
                            <div class="item_text">
                            Вас ждет очень страшное предложение
                            </div>
                            <button class="button">Подробнее</button>
                        </div>
                    </div>
                </div>

                <div class="discounts_item flex wow animate__animated animate__fadeInRight">
                    <img class="item_img" src="./img/discounts/4.jpg" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Ждем вас в наших социальных сетях</div>
                            <div class="item_text">

                            </div>
                            <button class="button">Подробнее</button>
                        </div>
                    </div>
                </div>

                <div class="discounts_item flex wow animate__animated animate__fadeInLeft">
                    <img class="item_img" src="./img/discounts/5.jpg" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Мир привилегий VISA</div>
                            <div class="item_text">
                                При оплате билетов в кинотеатрах Palace of Arts <br> платежными карточками Visa вы
                                получаете скидку!
                            </div>
                            <button class="button">Подробнее</button>
                        </div>
                    </div>
                </div>

                <div class="discounts_item flex wow animate__animated animate__fadeInRight">
                    <img class="item_img" src="./img/discounts/6.png" alt="">
                    <div class="item_content">
                        <div class="item_description">
                            <div class="item_category">Акции и новости</div>
                            <div class="item_title">Ждем вас в наших социальных сетях</div>
                            <div class="item_text">

                            </div>
                            <button class="button">Подробнее</button>
                        </div>
                    </div>
                </div>




            </div> <!-- discounts_content -->
        </div>
    </section>
    <!--sction_wrapper -->

    <?php 
    require("companents/feedback.php")
    ?>

    <?php 
        require("companents/footer.php")
    ?>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="./js/common.js"></script>
    <script src="./js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
</body>

</html>