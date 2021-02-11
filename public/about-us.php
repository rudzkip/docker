<?php 
require_once('config.php');
mysqli_set_charset($db,"utf8");
?>
<!doctype html>
<html lang="pl">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>O nas - Polite Guys</title>
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
            $sql = "select path_ from images where id = 3";
            $result=mysqli_query($db,$sql);
            $row = mysqli_fetch_row($result);
        ?>
        <section class="header-banner" style="background-image: url(<?php echo $row[0]?>)">
            <div class="header-banner__container">
                <?php
                    $sql = "select about from about_us where id = 1";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_row($result);
                ?>
                <h1 class="header-banner__title"><?php echo $row[0]?></h1>
            </div>
        </section>
        <div class="page-content">
            <section class="page-description">
                <?php
                    $sql = "select about from about_us where id = 2";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_row($result);
                ?>
                <p class="page-description__text"><?php echo $row[0]?></p>
            </section>
            <section class="text">
                <?php
                    $sql = "select about from about_us where id = 3";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_row($result);
                    echo $row[0];
                ?>
            </section>
            <section class="image">
                <?php
                    $sql = "select * from images where id = 4";
                    $result=mysqli_query($db,$sql);
                    $row = mysqli_fetch_assoc($result);
                ?>
                <img src="<?php echo $row['path_']?>" alt="<?php echo $row['alt']?>">
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