<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>
<!DOCTYPE html>
<html lang="en">
  <head>  
    <title>小区报修系统-用户注册 User Reg</title>
     <!-- Load  /lib/user_header.inc -->
    <!--#include File="../lib/user_header.inc"-->
      <style type="text/css">
          .style2
          {
              width: 101px;
          }
      </style>
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
           <li><a href="user_login.aspx">返回登录界面</a></li>
          </ul>
         
           
         
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">用户注册</a></li>
            <li><a href="user_login.aspx">用户登录</a></li>
          </ul>
         
          <ul class="nav nav-sidebar">
            <li><a href="../index.aspx">返回首页</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">用户注册 User Reg</h1>

          <div class="row placeholders">
              <table>
               <tr >
               <td height="50" class="style2">用户名</td>
               <td ><asp:TextBox ID="username" value="" placeholder="用户名" class="form-control" runat="server" ></asp:TextBox>  </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ErrorMessage="请输入用户名" ControlToValidate="username"></asp:RequiredFieldValidator></td>
               </tr>

                <tr>
               <td height="50" class="style2">密码</td>
               <td><asp:TextBox type="password" ID="userpwd" placeholder="密码" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ErrorMessage="请输入密码" ControlToValidate="userpwd"></asp:RequiredFieldValidator></td>
               </tr>

               <tr>
               <td height="50" class="style2">姓名</td>
               <td><asp:TextBox ID="fullname" placeholder="输入姓名" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ErrorMessage="请输入姓名" ControlToValidate="fullname"></asp:RequiredFieldValidator></td>
               </tr>

               <tr>
               <td height="50" class="style2">邮箱</td>
               <td><asp:TextBox ID="email" placeholder="输入邮箱" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ErrorMessage="请输入邮箱" ControlToValidate="email"></asp:RequiredFieldValidator></td>
               </tr>

               <tr>
               <td height="50" class="style2">房间号</td>
               <td><asp:TextBox ID="add" placeholder="输入您的房间号" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                       ErrorMessage="请输入房间号" ControlToValidate="add"></asp:RequiredFieldValidator></td>
               </tr>

               <tr>
               <td height="50" class="style2">其他信息</td>
               <td><asp:TextBox ID="info" placeholder="其他信息，可留空" class="form-control" runat="server" ></asp:TextBox> </td>
               </tr>

               <tr><td colspan="2" align="center">   <asp:Button ID="reg_botton" class="btn btn-lg btn-primary" runat="server" Text="立即注册" onclick="reg_botton_Click"  />  </td>  </tr>
              </table>             
          </div>

          
        </div>
      </div>
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
