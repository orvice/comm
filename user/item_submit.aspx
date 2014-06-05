<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item_submit.aspx.cs" Inherits="user_item_submit" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
   

    <title>小区报修系统-用户中心 User Center</title> 

  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap-select.js"></script>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-select.css">


     
     <!-- Loading Bootstrap 3.0 --> 
     <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
     <script src="../bootstrap/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../css/flat-ui.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/favicon.ico">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

      <script type="text/javascript">
          $(window).on('load', function () {

              $('.selectpicker').selectpicker({
                  'selectedText': 'cat'
              });

              // $('.selectpicker').selectpicker('hide');
          });
    </script>


  </head>

  <body>
  <form id="form1" runat="server">

    

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">小区报修系统</a>
        </div>
        <div class="navbar-collapse collapse">
          
          <ul class="nav navbar-nav navbar-right">
            <li>  <a href='#'>用户: 
            <asp:Label id="Label1"   Runat="server" Text="Label"></asp:Label>
           </a></li>            
           <li><a href="logout.aspx">退出</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="user_panel.aspx">用户中心</a></li>
            <li class="active"><a href="item_submit.aspx">提交报修</a></li>
            <li><a href="item_list.aspx">报修列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="contact_admin.aspx">联系管理员</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="user_change_pwd.aspx">更改密码</a></li>
            <li><a href="usre_profile.aspx">资料修改</a></li>
            <li><a href="logout.aspx">退出登录</a></li>
          </ul>
        </div>
    </div>
    </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">提交报修 Items Submit</h1>

          
         
              <table>
               <tr >
               <td height="50" class="style2">项目</td>
               <td ><asp:TextBox ID="username" value="" placeholder="用户名" class="form-control" runat="server" ></asp:TextBox>  </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ErrorMessage="请输入用户名" ControlToValidate="username"></asp:RequiredFieldValidator></td>
               </tr>

                <tr>
               <td height="50" class="style2">分类</td>
               <td > 
               
                   <asp:DropDownList ID="DD1"  class="selectpicker" runat="server">
                   </asp:DropDownList>
                
                    </td>
               <tr>


               <td height="50" class="style2">姓名</td>
               <td><asp:TextBox ID="fullname" placeholder="输入姓名" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ErrorMessage="请输入姓名" ControlToValidate="fullname"></asp:RequiredFieldValidator></td>
               </tr>

               

               <tr><td colspan="2" align="center">   <asp:Button ID="item_submit_botton" class="btn btn-lg btn-primary" runat="server" Text="提交报修" onclick="item_submit_botton_Click"  />  </td>  </tr>
              </table>             
         
      </div>
   

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/docs.min.js"></script>
  </form>
  </body>
</html>
