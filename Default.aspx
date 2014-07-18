<%@ Page Title="" Language="C#" MasterPageFile="~/title_footer.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>BunkIt!!!</title>
        <link href="css/home.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.localscroll-1.2.7-min.js"></script>
        <script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#nav').localScroll(800);

                //.parallax(xPosition, speedFactor, outerHeight) options:
                //xPosition - Horizontal position of the element
                //inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
                //outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
                $('#intro').parallax("50%", 0.1);
                $('#second').parallax("50%", 0.1);
                $('.bg').parallax("50%", 0.4);
                $('#third').parallax("50%", 0.3);

            })
        </script>
    </head>
    <body>
        <div class="placeholder" id="one">
        <div id="intro">
            <div class="story">
                <div class="float-left">
                    <h2>About Bharati Vidyapeeth's College of Engineering, New Delhi</h2>
                    <p>Bharati vidyapeeth’s college of engg., New Delhi since its establishment in 1999, has strived to provide the best engineering education to its students through well qualified and dedicated faculty and provision of well equipped modern labs.</p>

<p>The college affiliated to Guru Gobind Singh Indraprasth University, New Delhi, and approved by All India Council for Technical Education (AICTE), Ministry of HRD, Govt. of India, BVCOE is steadily striding forward in its quest of establishing itself among the top engineering colleges in North India.</p>

<p>The vision of the college is to continuously excel and thus coming together enlivens the research themes, creates awareness about upcoming technologies and provide platform to budding research workers for achieving their rightful place in the scientific community.</p>
                </div>
            </div>
            <!--.story-->
        </div>
        <!--#intro-->

        <div id="second">
            <div class="story">
                <div class="bg"></div>
                <div class="float-right">
                    <h2>Multiple Backgrounds</h2>
                    <p>The multiple backgrounds applied to this section are moved in a similar way to the first section -- every time the user scrolls down the page by a pixel, the positions of the backgrounds are changed.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh erat, sagittis sit amet congue at, aliquam eu libero. Integer molestie, turpis vel ultrices facilisis, nisi mauris sollicitudin mauris, volutpat elementum enim urna eget odio. Donec egestas aliquet facilisis. Nunc eu nunc eget neque ornare fringilla. Nam vel sodales lectus. Nulla in pellentesque eros. Donec ultricies, enim vitae varius cursus, risus mauris iaculis neque, euismod sollicitudin metus erat vitae sapien. Sed pulvinar.</p>
                </div>
            </div>
            <!--.story-->

        </div>
        <!--#second-->

        <div id="third">
            <div class="story">
                <div class="float-left">
                    <h2>Contact Us</h2>
                    <table class="auto-style1">
                        <tr>
                            <td><span style="font-size:large; font-weight: 700;">Address</span></td>
                            <td><span style="color: rgb(177, 239, 41); font-family:sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><strong>Bharati Vidyapeeth&#39;s College of Engg.</strong></span><strong><br style="color: rgb(255, 102, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                                </strong>A-4, Paschim Vihar, New Rohtak Raod<br />
                                (In front of Paschim Vihar East Metro Station)<br />
                                New Delhi -110063</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Telephone Number</strong></td>
                            <td>91-11-25258637, 25278443/ 44</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Telefax</strong></td>
                            <td>91-11-25275436</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Email</strong></td>
                            <td><a class="link_VE" href="mailto:coedelhi@bharatividyapeeth.edu" style="font-family: sans-serif; font-size: 15px; color: rgb(177, 239, 41); text-decoration: none; font-weight: normal; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><strong>coedelhi@bharatividyapeeth.edu</strong></a><span style="color: rgb(153, 0, 255); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><span class="Apple-converted-space"><br />
                                <a class="link_VE" href="mailto:principalbvcoedelhi@bharatividyapeeth.edu" style="font-family: sans-serif; font-size: 15px; color: rgb(177, 239, 41); text-decoration: none; font-weight: normal; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><strong>principalbvcoedelhi@bharatividyapeeth.edu</strong></a></strong></a><span style="color: rgb(153, 0, 255); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><span class="Apple-converted-space"></span></span></td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Parent Website</strong></td>
                            <td><a class="link_VE" href="http://coedelhi.bharatividyapeeth.edu/" style="font-family: sans-serif; font-size: 15px; color: rgb(177, 239, 41); text-decoration: none; font-weight: normal; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><strong>http://coedelhi.bharatividyapeeth.edu</strong></a></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--.story-->
        </div>
        <!--#third-->
    </div>
    </body>
</asp:Content>

