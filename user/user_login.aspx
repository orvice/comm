<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_user_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<!-- Loading Bootstrap -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../css/flat-ui.css" rel="stylesheet">
    <link href="../css/demo.css" rel="stylesheet">

    <link rel="shortcut icon" href="../images/favicon.ico">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="../js/html5shiv.js"></script>
      <script src="../js/respond.min.js"></script>
    <![endif]-->


    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" >
    



  <div class="login">
        <div class="login-screen">
          <div class="login-icon">
            <img src="../images/login/icon.png" alt="Welcome to Mail App" />
            <h4>欢迎使用 <small>保修系统</small></h4>
          </div>

          <div class="login-form">
            <div class="form-group">
              <input type="text" class="form-control login-field" value="" placeholder="输入用户名" id="login-name" />
              <label class="login-field-icon fui-user" for="login-name"></label>
            </div>

            <div class="form-group">
              <input type="password" class="form-control login-field" value="" placeholder="输入密码" id="login-pass" />
              <label class="login-field-icon fui-lock" for="login-pass"></label>
            </div>

            <a class="btn btn-primary btn-lg btn-block" href="#">登录</a>
            <a class="login-link" href="#">忘记密码?</a>
          </div>
        </div>
  </div>

      </div>
    </form>
</body>
</html>