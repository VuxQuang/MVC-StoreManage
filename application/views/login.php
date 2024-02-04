<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý kho đăng nhập</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <!-- <link rel="icon" href="<?php echo base_url('assets/image/icon.png') ?>" type="image/x-icon" /> -->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/vendor/bootstrap/css/bootstrap.min.css') ?>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
    href="<?php echo base_url('assets/log/fonts/font-awesome-4.7.0/css/font-awesome.min.css') ?>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/vendor/animate/animate.css') ?>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/vendor/css-hamburgers/hamburgers.min.css') ?>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/vendor/select2/select2.min.css') ?>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/css/util.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/log/css/main.css') ?>">
    <!--===============================================================================================-->
</head>

<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100" style="padding-top: 140px">

                <div class="login100-pic js-tilt" data-tilt>
                    <img src="<?php echo base_url('assets/log/images/Login1.png') ?>" alt="IMG">
                </div>
                <form class="login100-form validate-form" action="<?php echo base_url('auth/login') ?>" method="post">
                    <Center>
                        <img src="<?php echo base_url('assets/image/avatar.svg') ?>" width="80" height="80"><br><br>
                        <b>Hệ Thống Quản Lý Kho NamIT</b><br><br>
                    </Center>

                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz"
                        style="margin-bottom:10px ">
                        <input class="input100" type="text" name="email" placeholder="Nhập tài khoản của bạn"
                            value="">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    
                    <!-- @error('email')
                        <span style="color: red;margin-left: 30px;display: block;margin-bottom: 5px;" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror -->

                    <div class="wrap-input100 validate-input" data-validate="Password is required"
                        style="margin-bottom:10px">
                        <input class="input100" type="password" name="password" placeholder="Nhập mật khẩu">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <!-- @error('password')
                        <span style="color: red;margin-left: 30px;display: block;" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror -->

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit">
                            Đăng nhập
                        </button>
                    </div>
                  
                        <div class="text-center p-t-12">

                            <a class="txt2" href="<?php echo base_url('password.request') ?>">
                                Quên mật khẩu?<br><br>
                            </a>
                        </div>


                    <style>
                        .language {
                            display: flex;
                            justify-content: space-evenly;
                        }

                    </style>
                    <div class="language">
                        <a href="?change_language=vn">
                            <img class="js-tilt" src="<?php echo base_url('assets/Image/vietnam1.svg') ?>" width="50"
                                height="50">
                        </a>
                        <a href="?change_language=en">
                            <img class="js-tilt" src="<?php echo base_url('assets/Image/us.svg')?>" width="50" height="50">
                        </a>
                        <a href="?change_language=cn">
                            <img class="js-tilt" src="<?php echo base_url('assets/Image/china.svg')?>" width="50" height="50">
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script href="<?php echo base_url('assets/log/vendor/jquery/jquery-3.2.1.min.js') ?>"></script>
    <!--===============================================================================================-->
    <script href="<?php echo base_url('assets/log/vendor/bootstrap/js/popper.js') ?>"></script>
    <script href="<?php echo base_url('assets/log/vendor/bootstrap/js/bootstrap.min.js') ?>"></script>
    <!--===============================================================================================-->
    <script href="<?php echo base_url('assets/log/vendor/select2/select2.min.js') ?>"></script>
    <!--===============================================================================================-->
    <script href="<?php echo base_url('assets/log/vendor/tilt/tilt.jquery.min.js') ?>"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <!-- <script src="<?php echo base_url('assets/log/js/main.js') ?>"></script> -->

</body>

</html>
