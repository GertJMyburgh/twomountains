<?php

    // Include Lead_api class
    require_once("lead_api.php");

    // Get a handle/reference to the Lead API
    $lead_api = new Lead_api();

    // Get POSTed values from parent form (calling form)
    $nameSurname = htmlspecialchars($_POST["name"]);
    $phoneNumber = htmlspecialchars($_POST["phoneNumber"]);
    $product     = htmlspecialchars($_POST["products"]);

    if (trim($nameSurname) !== "" || trim($phoneNumber) !== "" || trim($product) !== "") {
        $lead_api->insertLead($nameSurname, $phoneNumber, $product);
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

        <title>Hollard Branch Locator</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

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

        <!-- Tag for Call Me Back – must fire when a customer has successfully requested a “call me back” -->
        <!-- Google Code for Call Me Back Conversion Page -->
        <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 861406385;
            var google_conversion_language = "en";
            var google_conversion_format = "3";
            var google_conversion_color = "ffffff";
            var google_conversion_label = "Qh35CNL_9G0QsYngmgM";
            var google_remarketing_only = false;
            /* ]]> */
        </script>

        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>

        <noscript>
            <div style="display:inline;">
                <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/861406385/?label=Qh35CNL_9G0QsYngmgM&amp;guid=ON&amp;script=0"/>
            </div>
        </noscript>

        <!--TOP MASTHEAD CONTAINING HOME ICON LINKING BACK TO BRANCHES INDEX PG-->
        <div class="home-masthead">
            <div class="container">
                <div class="row">
                    <nav class="home-main">
                        <a class="home-icon" href="#">&nbsp;</a>
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
        <div class="row">
            <!--MAIN CONTENT SECTION ON LEFT INCLUDING BRANCHES SEARCH FORM-->
            <div class="col-lg-10 branch-header branch-title">
                <h2 class="branch-subheading">Thank you for submitting your contact details. One of our agents will be in contact soon.</h2>
                <br />
                <!--HOLLARD CALL DIRECT NUMBER-->
                <a href="click-to-call.html" target="_blank" class="ph-glyph"><h3 class="universal-number"><span class="glyphicon glyphicon-phone-alt"></span> Or call us directly!</h3></a>
            </div>
        </div><!-- /.container -->

        <!--FOOTER-->
        <footer class="branch-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-push-8 branch-footer-social">
                        <ul class="nav-social">
                            <li class="nav-social--facebook">
                                <a href="https://www.facebook.com/HollardInsurance/?fref=ts" target="_blank"><i class="icon--facebook">&nbsp;</i></a>
                            </li>
                            <li class="nav-social--linkedin">
                                <a href="https://www.linkedin.com/company/hollard-insurance" target="_blank"><i class="icon--linkedin">&nbsp;</i></a>
                            </li>
                            <li class="nav-social--twitter">
                                <a href="https://twitter.com/Hollard?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><i class="icon--twitter">&nbsp;</i></a>
                            </li>
                            <li class="nav-social--googleplus">
                                <a href="https://plus.google.com/u/0/+HollardInsurance" target="_blank"><i class="icon--googleplus">&nbsp;</i></a>
                            </li>
                            <li class="nav-social--instagram">
                                <a href="https://www.instagram.com/hollardgram/?hl=en" target="_blank"><i class="icon--instagram">&nbsp;</i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <span style="color:white; font-size: 150%;"><strong>If you are a government employee, Hollard can now conveniently deduct payments from your salary</strong></span>

            <div class="container">
                <div class="row">
                    <p>
                        The Hollard Insurance Company Ltd (Reg No. 1952/003004/06) is an authorised Financial Services Provider, and a member of the South African Insurance Association (SAIA).<br>
                        Hollard Life Assurance Company (Reg. No. 1993/001405/06) is an authorised Financial Services Provider and a member of the Association for Savings and Investment South Africa (ASISA).<br> 
                        Hollard Investment Managers (Reg. No. 1997/001696/07) is an authorised Financial Services Provider, operates as an investment manager and is a member of the Association for Savings and Investment South Africa (ASISA).<br>
                        <br>
                        Hollard is committed to high ethical standards of business. Hollard subscribes to the Ombudsman for Short-Term Insurance and the Ombudsman for Long-Term Insurance, and is subject to the jurisdiction of the FAIS Ombud. <br>
                        <br>
                        Hollard has developed and publicises its own Financial Crime Risk Management Policy as well as policies in support of the aims of the 
                        Anti Money-Laundering Act and the Corrupt Activities Act.
                    </p>
                    <p>
                        &copy; Copyright 2016 Hollard 
                    </p>
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
