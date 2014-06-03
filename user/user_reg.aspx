<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

   <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/jumbotron-narrow.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="../images/favicon.ico">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <title>小区物业管理系统</title>
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="#">首页</a></li>
          <li><a href="#">管理后台</a></li>
          <li><a href="user_panel.aspx">用户面板</a></li>
        </ul>
        <h3 class="text-muted">小区报修系统</h3>
      </div>

      <div class="jumbotron row"  >
        <h1>注册</h1>
                    
                    <div class="form-group">
                    <span class="fui-arrow-right"></span>用户名:                
                    <asp:TextBox ID="username" class="form-control" runat="server" Width="300px"></asp:TextBox>  
                    </div>    
                                             
                    
                    

                   
                    <div class="form-group">
                        密码:               
                    <asp:TextBox ID="userpwd" class="form-control" runat="server" Width="300px"></asp:TextBox>
                    </div>    
                    
               
                    
              
                    <br />
              
                    <asp:Button ID="Reg" class="btn btn-lg btn-primary" runat="server" onclick="Reg_Click" Text="立即注册" />
            
         
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h4>已经注册？</h4>
          <p>请<a href="user_login.aspx">点击这里</a>登录进入面板。</p>

           
        </div>

        <div class="col-lg-6">
           <h4>我是管理员</h4>
          <p>管理员<a href="user_login.aspx">点击这里</a>进入后台。</p>

           
        </div>
      </div>

      <div class="footer">
        <p>&copy; 小区保修系统 2014</p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   </form>
  </body>
</html>

