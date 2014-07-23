<%@ Page Title="" Language="C#" MasterPageFile="~/title_footer.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
        }
    .auto-style3 {
        font-size: xx-large;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>BVCOE Attendance Portal</title>
        <link href="css/home.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.localscroll-1.2.7-min.js"></script>
        <script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script>
        <script type="text/javascript" src="js/jquery.nicescroll.js"></script>
        <script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("html").niceScroll();
                $('#nav').localScroll(800);

                //.parallax(xPosition, speedFactor, outerHeight) options:
                //xPosition - Horizontal position of the element
                //inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
                //outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
                $('#intro').parallax("50%", 0.1);
                $('#second').parallax("50%", 0.1);
                $('.bg').parallax("50%", 0.17);
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
                    <p>Bharati vidyapeeth’s college of engineering, New Delhi since its establishment in 1999, has strived to provide the best engineering education to its students through well qualified and dedicated faculty and provision of well equipped modern labs.</p>

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
                    <h2 class="auto-style3">Login</h2>
                    <p>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                    <p><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="#FF3300"></asp:Label>
                        </ContentTemplate>
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1"
                                    EventName="Click" />
                    </Triggers>        
                    </asp:UpdatePanel>    
                        </p>
                    
                    
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2"><strong>Username</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="textbox" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><strong>Password</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Selected="True">CSE</asp:ListItem>
                                        <asp:ListItem>ECE</asp:ListItem>
                                        <asp:ListItem>EEE</asp:ListItem>
                                        <asp:ListItem>IT</asp:ListItem>
                                        <asp:ListItem>IC</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 34px" Height="22px" Width="76px">
                                        <asp:ListItem Value="1yr">1st Year</asp:ListItem>
                                        <asp:ListItem Value="2yr">2nd Year</asp:ListItem>
                                        <asp:ListItem Value="3yr">3rd Year</asp:ListItem>
                                        <asp:ListItem Value="4yr">4th Year</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" CssClass="button" Height="67px" Text="Login" Width="113px" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:Panel ID="Panel2" runat="server">
                    </asp:Panel>
                </div>
            </div>
            <!--.story-->

        </div>
        <!--#second-->

        <div id="third">
            <div class="story">
                <div class="bg"></div>
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
                            <td class="auto-style2"><strong>Telephone No</strong></td>
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
                            <td class="auto-style2"><strong>Website</strong></td>
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

