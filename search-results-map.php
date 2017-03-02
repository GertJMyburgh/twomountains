<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="images/favicon.ico">

        <title>Two Mountains Branch Locator - Search Results Map</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <!-- <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet"> -->

        <!-- Custom styles for this template -->
        <link href="css/main.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]>
        <script src="../../assets/js/ie8-responsive-file-warning.js"></script>
        <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
        [endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- START BRANCH DATA
          Province = Free State
          City = Bloemfontein-Botshabelo
          Branch = Botshabelo
          Manager = Unknown
          Latitude = -29.0000000
          Longitude = 26.0000000
          Address = Shop 19 RCM Shopping Complex Strand St Botshabelo FS
          mapurl = https://goo.gl/maps/GBhmm15vW7H2
          center: new google.maps.LatLng(-29.0000000, 26.0000000),
          center: new google.maps.LatLng(38.9419, -78.3020),
          center: new google.maps.url("https://goo.gl/maps/GBhmm15vW7H2"),
          center: new google.maps.url("http://maps.google.com/maps?z=12&t=m&q=loc:38.9419+-78.3020"),
        END BRANCH DATA -->

        <script>

            function initMap() {
                var mapProperties = {
                    center: new google.maps.LatLng(-29.0000000, 26.0000000),
                    zoom: 8,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), mapProperties);
            }

            google.maps.event.addDomListener(window, 'load', initMap);

        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALKLHmQpaY_wNrRsbZEPMHiDmGN5IlNnQ&callback=initMap" async defer></script>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    </head>

    <body>

        <!--TOP MASTHEAD CONTAINING HOME ICON LINKING BACK TO BRANCHES INDEX PG-->
        <div class="home-masthead">
            <div class="container">
                <div class="row">
                    <nav class="home-main">
                        <p class="home-glyph"><a href="#"><span class="glyphicon glyphicon-home" style="color:#fff;"></span></a>
                        </p>
                    </nav>
                </div>
            </div>
        </div>

        <!--2ND MASTHEAD CONTAINING HOLLARD LOGO LINKING BACK TO BRANCHES INDEX PG-->
        <div class="logo-masthead">
            <div class="container">
                <div class="row">
                    <ul class="nav-main">
                        <li class="nav-main__logo">
                            <a class="logo" href="/">&nbsp;</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container">

            <!--MAIN CONTENT SECTION ON LEFT INCLUDING MAP AND BRANCH DEETS-->
            <div class="col-lg-10 branch-header branch-title">
                <h1>Two Mountains Branch Locator</h1>
                <h3 class="branch-subheading">Find your nearest Two Mountains branch:</h3>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-6 branch-main">

                    <!--GOOGLE MAP-->
                    <div class="col-sm-12 branch-main">

                        <div id="googleMap" class="col-sm-12 col-md-12 map-sizer"></div>

                        <!--BRANCH DETAILS PERTAINING TO MAP-->
                        <div class="search-results">
                            <h4 class="search-results-branchname">George</h4>
                            <dl class="search-results-list">
                                <dt>Address:</dt>
                                <dd>Unit 9, Canal Edge III, Carl Cronje Drive, Tyger Waterfront, 7530</dd>
                                <dt>Branch Manager:</dt>
                                <dd>Heinrich Westenraad</dd>
                            </dl>
                            <p><a href="https://goo.gl/maps/hKDhx7JavKs" class="search-results-maplink">See Map</a></p>
                        </div>
                    </div>

                    <!--BRANCHES SEARCH REDEFINE BUTTON - TO TAKE USER BACK TO THE SEARCH PAGE-->
                    <form action="index.php" method="post" class="form-inline">
                        <div class="col-lg-12 form-group branch-form">
                            <input type="submit" class="btn map-form-btn" id="redefine-search" value="REDEFINE SEARCH"/>
                        </div>
                    </form>

                </div>

                <!--RIGHT SIDEBAR INCLUDING CALL-BACK FORM-->

                <div class="col-sm-4 col-sm-offset-2 branch-sidebar">
                    <div class="sidebar-module sidebar-module-inset sidebar">
                        <h2>Rather call me back please</h2>
                        <form action="call-me-back.html" method="post">
                            <div class="form-group">
                                <!--<label for="name">Name</label>-->
                                <input type="text" class="form-control" id="name" value="Name*"/>
                            </div>
                            <div class="form-group">
                                <!--<label for="email">Email</label>-->
                                <input type="text" class="form-control" id="phoneNumber" value="Contact Number*"/>
                            </div>
                            <div class="form-group">
                                <input type="submit" class=" sidebar-btn" id="please-call-me" value="Please Call Me!"/>
                            </div>
                        </form>
                    </div>

                    <!--HOLLARD CALL DIRECT NUMBER-->
                    <div class="sidebar-module">
                        <a href="click-to-call.html" target="_blank" class="ph-glyph"><h3 class="universal-number"><span
                                class="glyphicon glyphicon-phone-alt"></span> Or call us directly!</h3></a>
                    </div>

                </div><!-- /.branch-sidebar -->

            </div><!-- /.row -->

        </div><!-- /.container -->

        <!--FOOTER-->
        <footer class="branch-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <p>
                            Two Mountains Holdings &copy; 2017 <span style="color:#fff;">- FSP: 8706</span>
                        </p>
                    </div>
                    <div class="col-sm-3 col-sm-push-5 branch-footer-social">
                        <ul class="nav-social">
                            <li class="nav-social--facebook">
                                <a href="http://www.facebook.com/TwoMountainsZA" target="_blank"><i class="icon--facebook">
                                    &nbsp;</i></a></li>
                            <li class="nav-social--twitter">
                                <a href="http://www.twitter.com/TwoMountainsZA" target="_blank"><i class="icon--twitter">
                                    &nbsp;</i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-sm-push-8">
                        <p><span style="font-size: 0.8em;">Underwritten by:</span></p>
                        <ul class="underlogo">
                            <li class="underwritten-logo">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
        -->

        <script src="http://maps.googleapis.com/maps/api/js"></script>

    </body>
</html>