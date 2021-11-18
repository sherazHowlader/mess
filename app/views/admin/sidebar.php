<?php
    $url = $_SERVER['REQUEST_URI'];    
    $url = explode('/', $url);
    $crtlName = $url[2];
    $methodName = $url[3];
    // echo $crtlName;
?>

<div class="app-main">
    <div class="app-sidebar sidebar-shadow">
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

        <div class="scrollbar-sidebar">
            <div class="app-sidebar__inner">

                <div class="profilePicture">
                    <!-- <img src="https://cdn.iconscout.com/icon/free/png-256/boy-avatar-4-1129037.png" alt=""> -->
                    <img src="https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/3_avatar-512.png" alt="">
                </div>
                <div class="text-center mb-4 mt-3">                    
                    <h4> 
                        <b> <?php $user = $_SESSION['userData']; echo $user['name']; ?> </b> <br>
                    </h4>
                    <h6>
                        <?php echo $user['role_name']; ?> 
                    </h6>                    
                </div>

                <ul class="vertical-nav-menu">
                    <li class="app-sidebar__heading"> এক নজরে</li>
                    <li>
                        <a href="<?php echo BASE_URL;?>/Dashboard/home" class="<?php if ($crtlName=="Dashboard") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-hammer"></i>                            
                            সংক্ষিপ্ত হিসাব
                        </a>
                    </li>

                    <li class="app-sidebar__heading"> বিভাগ সমূহ </li>

                    <!-- for role control  -->
                    <li>
                        <a href="<?php echo BASE_URL;?>/Deposit/home" class="<?php if ($crtlName=="Deposit") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-hand-holding-usd"></i>
                            জমা হিসাব
                        </a>
                    </li>

                    <!-- for user control -->
                    <li>
                        <a href="<?php echo BASE_URL;?>/Market/home" class="<?php if ($crtlName=="Market") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-shopping-cart"></i>
                            বাজার খরচ
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo BASE_URL;?>/Others/home" class="<?php if ($crtlName=="Others") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-cart-plus"></i>
                            অন্যান্য খরচ
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo BASE_URL;?>/Meal/home" class="<?php if ($crtlName=="Meal") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-fish"></i>
                            মিল হিসাব
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo BASE_URL;?>/Account/home" class="<?php if ($crtlName=="Account") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-file-invoice"></i>
                            চূড়ান্ত হিসাব
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo BASE_URL;?>/Index/member" class="<?php if ($methodName =="member" || $methodName =="edit") {echo "mm-active"; } else  {echo "no-active";}?>">
                            <i class="metismenu-icon fas fa-users"></i>
                            সদস্য তালিকা
                        </a>
                    </li>

                </ul>
                
            </div>
        </div>

    </div>
    <div class="app-main__outer">
        <div class="app-main__inner">
