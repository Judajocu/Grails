
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <!--

Sentra Template

http://www.templatemo.com/tm-518-sentra

-->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <asset:stylesheet src="css/bootstrap.min.css"/>
    <asset:stylesheet src="css/bootstrap-theme.min.css"/>
    <asset:stylesheet src="css/fontAwesome.css"/>
    <asset:stylesheet src="css/light-box.css"/>
    <asset:stylesheet src="css/owl-carousel.css"/>
    <asset:stylesheet src="css/templatemo-style.css"/>
    <asset:stylesheet src="css/detalles.css"/>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <asset:javascript src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"/>

    <g:layoutHead/>

<body>



<header class="nav-down responsive-nav hidden-lg hidden-md">
    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <!--/.navbar-header-->
    <div id="main-nav" class="collapse navbar-collapse">
        <nav>
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li><a href="/contacs/index">Contacs</a></li>
                <li><a href="/department/index">Department</a></li>
                <li><a href="/usuario/index">Users</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="sidebar-navigation hidde-sm hidden-xs">
    <div class="logo">
        <a href="/">Grails<em></em></a>
    </div>
    <nav>
        <ul>
            <li>
                <a href="/">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Home
                </a>
            </li>
            <li>
                <a href="/contacs/index">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Contacs
                </a>
            </li>
            <li>
                <a href="/department/index">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Department
                </a>
            </li>
            <li>
                <g:link controller="usuario" >
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Usuario
                </g:link>
            </li>
        </ul>
    </nav>
    <ul class="social-icons">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#"><i class="fa fa-rss"></i></a></li>
        <li><a href="#"><i class="fa fa-behance"></i></a></li>
    </ul>
</div>


<div class="page-content">

    <section class="content-section" style="min-height: 700px;">

        <g:layoutBody/>
    </section>
<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>


    <section class="footer">
        <p>Copyright &copy; 2018. Design: <a href="http://templatemo.com/tm-518-sentra" target="_blank">Sentra</a> | Distribution: <a href="https://themewagon.com" target="_blank">ThemeWagon</a></p>
    </section>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<asset:javascript src="js/vendor/jquery-1.11.2.min.js"/>')</script>

<asset:javascript src="js/vendor/bootstrap.min.js"/>

<asset:javascript src="js/plugins.js"/>
<asset:javascript src="js/main.js"/>

<script>
    // Hide Header on on scroll down
    var didScroll;
    var lastScrollTop = 0;
    var delta = 5;
    var navbarHeight = $('header').outerHeight();

    $(window).scroll(function(event){
        didScroll = true;
    });

    setInterval(function() {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 250);

    function hasScrolled() {
        var st = $(this).scrollTop();

        // Make sure they scroll more than delta
        if(Math.abs(lastScrollTop - st) <= delta)
            return;

        // If they scrolled down and are past the navbar, add class .nav-up.
        // This is necessary so you never see what is "behind" the navbar.
        if (st > lastScrollTop && st > navbarHeight){
            // Scroll Down
            $('header').removeClass('nav-down').addClass('nav-up');
        } else {
            // Scroll Up
            if(st + $(window).height() < $(document).height()) {
                $('header').removeClass('nav-up').addClass('nav-down');
            }
        }

        lastScrollTop = st;
    }
</script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

</body>
</html>