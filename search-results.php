<?php

    // Include Branch_api class
    require_once("branch_api.php");

    // Get a handle/reference to the Branch API
    $branch_api = new Branch_api();

    $myProvince = "";
    $myCity     = "";
    
    // Get the branch, manager, address and google mapurl of the selected city belonging to the selected province
    if ($_POST) {
        $myProvince = $_POST['province_placeholder'];
        $myCity     = $_POST['city_placeholder'];
    } else {    
        if ($_GET) {
            if (trim($myProvince) == "") {
                $myProvince = trim($_GET['province']);
                $myProvince = str_replace("_", " ", $myProvince);
            }

            if (trim($myCity) == "") {
                $myCity = trim($_GET['city']);
                $myCity = str_replace("_", " ", $myCity);
            }
            $myBranch   = trim($_GET['branch']);
            $myMapURL   = trim($_GET['mapurl']);
        }
    }
            
    $displayProvince  = "";
    $displayCity      = "";
    $displayBranch    = "";
    $displayManager   = "";
    $displayLatitude  = "";
    $displayLongitude = "";
    $displayAddress   = "";
    $displayMapURL    = "";

    $info = $branch_api->getCityInfo($myProvince, $myCity);

    // Display the info
    foreach ($info as $key => $value) {
        $displayProvince       = $value['province'];
        $displayCity           = $value['city'];
        $displayBranch         = $value['branch'];
        $displayManager        = $value['manager'];
        $displayLatitude       = $value['latitude'];
        $displayLongitude      = $value['longitute'];
        $displayAddress        = $value['address'];
        $displayMapURL         = "search-results-map.php?province={$displayProvince}&city={$displayCity}&branch={$displayBranch}&latitute={$displayLatitude}&longitude={$displayLongitude}&mapurl={$value['mapurl']}";
    }

?>

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

        <title>Two Mountains Branch Locator - Search Results</title>

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

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

        <script type="text/javascript">

            // <![CDATA[
            function trimWhiteSpacesAll(str) {
                return str.replace(/\s/g, "");
            }

            function trimWhiteSpacesLeftRight(str) {
                str = str.replace(/^\s+/, '');
                for (var i = str.length - 1; i >= 0; i--) {
                    if (/\S/.test(str.charAt(i))) {
                        str = str.substring(0, i + 1);
                        break;
                    }
                }
                return str;
            }

            function getURL() {
                var url;
                url = parent.document.location.href;
                //alert("this is the parent url "+url);
                document.getElementById('urlPathName').value = url;
            }

            function validateForm() {
                var a = document.forms["Form1"]["name"].value;
                var c = document.forms["Form1"]["phoneNumber"].value;
                var d = document.forms["Form1"]["products"].value;

                // Strip any spaces in front or at the back
                a = trimWhiteSpacesLeftRight(a);
                document.forms["Form1"]["name"].value = a;
                c = trimWhiteSpacesAll(c);
                if (isIntegerNumber(c) == false) {
                    c = document.forms["Form1"]["phoneNumber"].value;
                    c = trimWhiteSpacesLeftRight(c);
                }
                document.forms["Form1"]["phoneNumber"].value = c;

                if (a=="My Name" || a=="") {
                    alert("Please enter at least your name.");
                    document.forms["Form1"]["name"].focus();
                    return false;
                }

                if (isAlphaCharacters(a) == false) {
                    alert("Do not use any special characters in the 'Name' field. Only alphabetic characters please.");
                    document.forms["Form1"]["name"].focus();
                    return false;
                }

                if (c.length<10 || isIntegerNumber(c) == false) {
                    alert("Please enter a phone number of at least 10 numeric digits (no other characters) ie 0210000000 or 082000000");
                    document.forms["Form1"]["phoneNumber"].focus();
                    return false;
                }

                if (c.charAt(0) != 0) {
                    alert("The 'Phone Number' may only start with the numeric digit 0 (e.g. 021 or 074 etc.)");
                    document.forms["Form1"]["phoneNumber"].focus();
                    return false;
                }

                if (d=="SelectProduct" || d=="") {
                    alert("Please select a product from the dropdown list.");
                    document.forms["Form1"]["products"].focus();
                    return false;
                }
            }

            function CalcKeyCode(aChar) {
                var character = aChar.substring(0,1);
                var code = aChar.charCodeAt(0);
                return code;
            }

            function checkNumber(val) {
                var strPass   = val.value;
                var strLength = strPass.length;
                var lchar     = val.value.charAt((strLength) - 1);
                var cCode     = CalcKeyCode(lchar);

                /* Check if the keyed in character is a number
                 do you want alphabetic UPPERCASE only ?
                 or lower case only just check their respective
                 codes and replace the 48 and 57
                 */

                if (cCode < 48 || cCode > 57 ) {
                    var myNumber = val.value.substring(0, (strLength) - 1);
                    val.value = myNumber;
                }

                return false;
            }

            function checkFieldOnBlur(val) {
                val.value = trimWhiteSpacesLeftRight(val.value);
                if (val.value == "") {
                    switch(val.name) {
                        case 'name':
                            val.value = "My Name";
                            break;
                        case 'phoneNumber':
                            val.value = "My Number";
                            break;
                        default:
                            val.value = "SelectProduct";
                    }
                }

                return val.value;
            }

            function cleanFieldOnFocus(val) {
                val.value = trimWhiteSpacesLeftRight(val.value);
                if (val.value == "My Name" || val.value == "My Number" || val.value == "MyNumber" || val.value == "SelectProduct") {
                    val.value = "";
                }

                return val.value;
            }

            function isInteger(s) {
                var i;
                for (i = 0; i < s.length; i++){
                    // Check that current character is number.
                    var c = s.charAt(i);
                    if (((c < "0") || (c > "9"))) return false;
                }
                // All characters are numbers.

                return true;
            }

            function isIntegerNumber(x) {
                var numbers = /^[-+]?[0-9]+$/;

                if (x.match(numbers)) {
                    return true;
                }
                else {
                    return false;
                }
            }

            function isAlphaCharacters(x) {
                var characters = /^[a-zA-Z ]+$/;

                if (x.match(characters)) {
                    return true;
                }
                else {
                    return false;
                }
            }

            function stripCharsInBag(s, bag) {
                var i;
                var returnString = "";
                // Search through string's characters one by one.
                // If character is not in bag, append to returnString.
                for (i = 0; i < s.length; i++) {
                    var c = s.charAt(i);
                    if (bag.indexOf(c) == -1) returnString += c;
                }

                return returnString;
            }

        </script>

    </head>

    <body>
        
        <!-- This is the Universal Analytics tracking code. To get all the benefits of
        Universal Analytics copy and paste this code into every webpage you want to track.
        -->
        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function() {
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
            ga('create', 'UA-91348818-1', 'auto');
            ga('send', 'pageview');
        </script>

        <!--TOP MASTHEAD CONTAINING HOME ICON LINKING BACK TO BRANCHES INDEX PG-->
        <div class="home-masthead">
            <div class="container">
                <div class="row">
                    <nav class="home-main">
                        <p class="home-glyph"><a href="#"><span class="glyphicon glyphicon-home" style="color:#fff;"></span></a></p>
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
            
            <!--MAIN CONTENT SECTION ON LEFT INCLUDING SEARCH RESULTS-->
            <div class="col-lg-10 branch-header branch-title">
                <h1>Two Mountains Branch Locator</h1>
                <h3 class="branch-subheading">Find your nearest Two Mountains branch:</h3>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-6 branch-main">
                    <!--BRANCHES SEARCH REDEFINE BUTTON - TO TAKE USER BACK TO THE SEARCH PAGE-->
                    <form action="index.php" method="post" class="form-inline">
                        <div class="col-lg-12 form-group branch-form">
                            <input type="submit" class="btn branch-form-btn" id="redefine-search" value="REDEFINE SEARCH"/>
                        </div>
                    </form>

                    <!--LIST OF RESULTS FROM SEARCH-->
                    <div class="col-sm-12 branch-main">
                        <h3 class="search-results-header">Branch Locator Results:</h3>

                        <div class="search-results">
                            <h4 class="search-results-branchname"><?php print $displayBranch;?></h4>
                            <dl class="search-results-list">
                                <dt>Address:</dt>
                                <dd><?php print $displayAddress;?></dd>
                                <dt>Branch Manager: </dt>
                                <dd><?php print $displayManager;?></dd>                
                            </dl>
                            <p><a href="<?php print $displayMapURL;?>" class="search-results-maplink">See Map</a></p>
                        </div>
                    </div>
                </div>

                <!--RIGHT SIDEBAR INCLUDING CALL-BACK FORM-->
                <div class="col-sm-4 col-sm-offset-2 branch-sidebar">

                    <div class="sidebar-module sidebar-module-list sidebar">
                        <h3>Our Funeral Plan Includes:</h3>
                        <ul>
                            <li>Up to R50 000 pay out for burial expenses. </li>
                            <li>Additional R1000 monthly pay out for six months to the beneficiary to cover basic living expenses after the burial. </li>
                            <li>R200 airtime. </li>
                            <li>Pays out within 24 hours. </li>
                        </ul>
                    </div>

                    <div class="sidebar-module sidebar-module-inset sidebar">
                        <h2>Rather call me back please</h2>

                        <form action="call-me-back.php" enctype="multipart/form-data" name="Form1" onsubmit="return validateForm()" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" id="name" value="My Name" onblur="checkFieldOnBlur(Form1.name)" onfocus="cleanFieldOnFocus(Form1.name)"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" value="My Number" onblur="checkFieldOnBlur(Form1.phoneNumber)" onfocus="cleanFieldOnFocus(Form1.phoneNumber)"/>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="products" id="products" value="Funeral">
                            </div>
                            <div class="form-group">
                                <input type="submit" class=" sidebar-btn" id="please-call-me" value="Please Call Me!"/>
                            </div>
                        </form>
                    </div>

                    <!--HOLLARD CALL DIRECT NUMBER-->
                    <div class="sidebar-module">
                        <a href="click-to-call.html" target="_blank" class="ph-glyph"><h3 class="universal-number"><span class="glyphicon glyphicon-phone-alt"></span> Or call us directly!</h3></a>
                    </div>

                </div><!-- /.branch-sidebar -->

            </div><!-- /.row -->

        </div><!-- /.container -->

        <!--FOOTER-->
        <footer class="branch-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <p>Two Mountains Holdings &copy; 2017 <span style="color:#fff;">- FSP: 8706</span></p>
                    </div>
                    <div class="col-sm-3 col-sm-push-5 branch-footer-social">
                        <ul class="nav-social">
                            <li class="nav-social--facebook"><a href="http://www.facebook.com/TwoMountainsZA" target="_blank"><i class="icon--facebook">&nbsp;</i></a></li>
                            <li class="nav-social--twitter"><a href="http://www.twitter.com/TwoMountainsZA" target="_blank"><i class="icon--twitter">&nbsp;</i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-sm-push-8">
                        <p><span style="font-size: 0.8em;">Underwritten by:</span></p>
                        <ul class="underlogo">
                            <li class="underwritten-logo"></li>
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
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
        
    </body>

</html>
