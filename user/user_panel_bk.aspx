<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_panel.aspx.cs" Inherits="user_user_panel" %>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>用户中心-UserCenter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="../images/favicon.ico">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="../js/html5shiv.js"></script>
      <script src="../js/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      <form id="form1" runat="server">
    <div class="container">
      <nav class="navbar navbar-inverse navbar-embossed" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-02">
              <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">小区报修系统</a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-collapse-02">
            <ul class="nav navbar-nav">           
              <li class="active"><a href="#fakelink">用户中心</a></li>
              <li><a href="#fakelink">提交报修</a></li>
              <li><a href="#fakelink">报修列表</a></li>
             </ul> 
                     
            <div class="dropdown  navbar-right">
                 <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">控制面板<span class="caret"></span></button>
                 <span class="dropdown-arrow dropdown-arrow-inverse"></span>
                 <ul class="dropdown-menu dropdown-inverse">
                 <li><a href="#fakelink">资料修改</a></li>                 
                 <li><a href="logout.aspx">退出登录</a></li>
                 </u>
            </div>
          </div><!-- /.navbar-collapse -->
        </nav><!-- /navbar -->
        444
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;你好，欢迎使用保修系统。</div>
    <!-- /.container -->


    <!-- Load JS here for greater good =============================-->
    <script src="../js/jquery-1.8.3.min.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../js/jquery.ui.touch-punch.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script src="../js/bootstrap-switch.js"></script>
    <script src="../js/flatui-checkbox.js"></script>
    <script src="../js/flatui-radio.js"></script>
    <script src="../js/jquery.tagsinput.js"></script>
    <script src="../js/jquery.placeholder.js"></script>
      </form>
  </body>
</html>