<?php
ob_start();
$user = $_SESSION['userData'];
if ($user['role_id'] == 0) {
    header("Location: " . BASE_URL . "/Index/login");
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/3_avatar-512.png" type="image/x-icon">
    <title> <?php echo $user['mess_name']; ?> </title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />

    <meta name="msapplication-tap-highlight" content="no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="<?php echo MAIN_CSS; ?>/main.css" rel="stylesheet">

    <!-- <link href="style.css" rel="stylesheet"> -->
</head>

<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>                

            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>
            <div class="app-header__content">
                <div class="app-header-left">
                    <div class="search-wrapper">
                        <div class="input-holder">
                            <input type="text" class="search-input" placeholder="Type to search">
                            <button class="search-icon"><span></span></button>
                        </div>
                        <button class="close"></button>
                    </div>                    
                </div>

                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="35" class="rounded-circle" src="https://cdn.iconscout.com/icon/free/png-512/male-avatar-41-1137023.png" alt="">
                                        </a>
                                        <div aria-hidden="true" class="dropdown-menu">                                            
                                            <button type="button" class="dropdown-item ">
                                                <a class="text-decoration-none" href="<?php echo BASE_URL; ?>/Index/settings"> Settings </a>
                                            </button>
                                            <button type="button" class="dropdown-item ">
                                                <a class="text-decoration-none" href="<?php echo BASE_URL; ?>/Index/logOut"> Log Out </a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info text-center">
                                    <div class="widget-heading">
                                        <?php echo $user['name']; ?>
                                    </div>
                                    <div class="widget-subheading">
                                        <?php echo $user['role_name']; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>