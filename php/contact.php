<?php 
require_once('config.php');
mysqli_set_charset($db,"utf8");
?>
<!doctype html>
<html lang="pl">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Kontakt - Polite Guys</title>
        <link href="./css/styles.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    </head>
    <body>
        <header class="header">
            <div class="header-container">
                <a href="./index.php" class="header__logo">
                    <?php
                        $sql = "select path_ from images where id = 1";
                        $result=mysqli_query($db,$sql);
                        $row = mysqli_fetch_row($result);
                    ?>
                    <img src="<?php echo $row[0]?>" alt="company logo">
                </a>
                <div class="header__button">
                    <div class="button__open">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <div class="button__close hide">
                        <div></div>
                        <div></div>
                    </div>
                </div>
                <nav class="header__menu">
                    <a href="./index.php">Strona główna</a>
                    <a href="./about-us.php">O nas</a>
                    <a href="./services.php">Usługi</a>
                    <a href="./projects.php">Wykonane projekty</a>
                    <a href="./contact.php">Kontakt</a>
                </nav>
            </div>
        </header>
        <?php
            $sql = "select path_ from images where id = 6";
            $result=mysqli_query($db,$sql);
            $row = mysqli_fetch_row($result);
        ?>
        <section class="header-banner" style="background-image: url(<?php echo $row[0]?>)">
            <div class="header-banner__container">
                <?php
                    $sql = "select about from contact where id = 1";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_row($result);
                ?>
                <h1 class="header-banner__title"><?php echo $row[0]?></h1>
            </div>
        </section>
        <div class="page-content">
            <section class="page-description">
                <?php
                    $sql = "select about from contact where id = 2";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_row($result);
                ?>
                <p class="page-description__text"><?php echo $row[0]?></p>
            </section>
            <section class="contact-info">
                <div class="contact-info__text">
                    <?php
                        $sql = "select about from special1 where section = 1";
                        $result=mysqli_query($db,$sql);
                        $row = mysqli_fetch_row($result);
                    ?>
                    <span><?php echo $row[0];?></span>
                    <?php
                        $sql = "select about from special1 where section = 4";
                        $result=mysqli_query($db,$sql);
                        $row = mysqli_fetch_row($result);
                    ?>
                    <span><?php echo $row[0];?></span>
                </div>
                <div class="contact-info__map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2433.496116572881!2d16.929336116154403!3d52.415807879794556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47045b458e6d37f9%3A0x630f1e648e79b67!2sCollegium%20Da%20Vinci!5e0!3m2!1spl!2spl!4v1592567081397!5m2!1spl!2spl&key=AIzaSyCOEn0dY6gGZqXyRNmNjcQ5DWC6mR8B2EA" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </section>
        </div>
        <footer class="footer">
            <div class="footer__container">
                <div class="footer__top-part">
                    <?php
                        $sql = "select about from special1 where section = 1";
                        $result=mysqli_query($db,$sql);
                        $row = mysqli_fetch_row($result);
                    ?>
                    <span><?php echo $row[0];?></span>
                </div>
                <div class="footer__bottom-part">
                    <?php
                        $sql = "select about from special1 where section = 2";
                        $result=mysqli_query($db,$sql);
                        $row = mysqli_fetch_row($result);
                    ?>
                    <span><?php echo $row[0];?></span>
                </div>    
            </div>
        </footer>

        <script src="./js/scripts.js"></script>
    </body>
</html>