<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShaamDB.aspx.cs" Inherits="ShaamDB" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10 ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="Shaam.co"/>
    <meta name="author" content="Shaam.co"/>
    <title>SIB</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet"/>
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/w3.css" rel="stylesheet" type="text/css" />

    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800' rel='stylesheet' type='text/css' />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/> 
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet"/>

     <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="img\favicon.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' type='text/css'/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
    <form id="form1" runat="server" class="">

        <div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    &nbsp;<a class="navbar-brand" href="#">Shaam Insurance Broker Company</a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="page-scroll" href="#hme">الرئيسية</a> </li>
                        <li><a class="page-scroll" href="#review">خدماتنا</a> </li>
                        <li><a class="page-scroll" href="#intro">من نحن</a> </li>
                        <li><a class="page-scroll" href="#contact">اتصل بنا</a> </li>
                        <!--<li><a class="page-scroll" href="login.aspx">Login</a> </li>-->
                    </ul>
                </div>
            </div>
        </div>


        <section class="home-section section text-center">
            <div class="container-fluid">
                <div class="">
                    <div class="">

                        <div class="form-wrapper marginbot-50">
                            <div class="container col-md-12">
                                التاريخ<asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="form-group"></asp:TextBox>
                                الاسم<asp:TextBox ID="TextBox2" runat="server" CssClass="form-group"></asp:TextBox>
                                اللقب<asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" CssClass="form-group"></asp:TextBox>
                                نوع التأمين<asp:DropDownList dir="rtl" ID="DropDownList1" runat="server" Width="200px">
                                    <asp:ListItem>Fire</asp:ListItem>
                                    <asp:ListItem>healthe</asp:ListItem>
                                </asp:DropDownList>
                                نوع التأمين<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="حفظ" BackColor="#FF9900" ForeColor="White" />
                            </div>
                        </div>
                        <div class="">
                            <div class="container table-responsive col-md-12">
                                <asp:GridView ID="GridView1" runat="server" class="table" BackColor="#99CCFF">
                                    <HeaderStyle BackColor="#3366FF" />
                                    <RowStyle BackColor="White" />
                                    <SortedAscendingCellStyle BorderStyle="Dashed" Font-Bold="False" />
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>


         <!-- Footer section -->
<footer class="footer">
  <div class="footer-top section-tb">
    <div class="container">
      <div class="row">
        <div class="footer-col col-md-6" dir="ltr">
          <h5>Our Office Location</h5>
          <p dir="ltr">Address: 10 kamal Eldin Hussein (F2) Heliopolis – Sheraton buildings – Cairo – Egypt<br/>
            Land line: 002 02 22672674 <br/>
            Mob 1: 002 01200067801<br />
            Mob 2: 002 01200067802<br />
            E-Mail: info@shaam.co<br />
            E-Mail: general@shaam.co <br />
            Website: www.shaam.co
            </p>
            <p>Copyright © 2017 All Rights Reserved. <a href="http://www.shaam.co">www.shaam.co</a><br />
               Powered by<a href="https://www.facebook.com/Suliman.Farzat" target="_blank"> Suliman Farzat</a></p>
          
        </div>
        <div class="footer-col col-md-3">
          <h5>Like us Share us</h5>
          <ul class="footer-share">
            <li><a href="https://www.facebook.com/shaaminsurancebrokercompany" target="_blank"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="https://www.linkedin.com/in/sib-shaam-insurance-broker-company-569354141" target="_blank"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="https://plus.google.com/u/0/101300545790307735549" target="_blank"><i class="fa fa-google-plus"></i></a></li>
          </ul>
        </div>
         
          <div class="footer-col col-md-3">
          <h5>Services We Offer</h5>
          
          <ul class="w3-left w3-right-align">
            <li><a href="#" data-toggle="modal" data-target="#myModal">تأمين الحريق</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal-2">تأمين المركبات</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal-3">تأمين الحوادث الشخصية</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal-4">التأمين الهندسى</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal-5">التأمين الطبي</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal-6">التأمين المسافر</a></li>
          </ul>
          
          </div>
      </div>
    </div>
  </div>
  <!-- footer top --> 
  
</footer>

    <!-- Footer section -->
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.easing.min.js" type="text/javascript"></script>
        <script src="js/jquery.flexslider-min.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script src="js/wow.js" type="text/javascript"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/main.js"></script>
    </form>
</body>
</html>
