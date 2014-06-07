<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_admin.aspx.cs" Inherits="user_contact_admin" %>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>小区报修系统-用户中心 User Center</title>
   <!-- Load  /lib/user_header.inc -->
   <!--#include File="../lib/user_header.inc"-->
  </head>
 <body>
    <!-- Load  /lib/user_nav.inc            -->
    <!--#include File="../lib/user_nav.inc" -->

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="user_panel.aspx">用户中心</a></li>
            <li><a href="item_submit.aspx">提交报修</a></li>
            <li ><a href="item_list.aspx">报修列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="contact_admin.aspx">联系管理员</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="user_change_pwd.aspx">更改密码</a></li>
            <li><a href="usre_profile.aspx">资料修改</a></li>
            <li><a href="logout.aspx">退出登录</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">联系管理员 Contact Admin</h1>              
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> ，有问题请在此提交给管理员。
           <div class="row placeholders">
           <form id="form1" runat="server">
              <table>
                
               <tr>
               <td height="50" class="style2">问题描述</td>
               <td><asp:TextBox ID="ticket" placeholder="问题描述" class="form-control" runat="server" Height="150" Width="300"></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                       ErrorMessage="问题描述" ControlToValidate="ticket"></asp:RequiredFieldValidator></td>
               </tr>

              

               <tr><td colspan="2" align="center">   <asp:Button ID="contact_admin_botton" class="btn btn-lg btn-primary" runat="server" Text="提交给管理员" onclick="contact_admin_botton_Click"  />  </td>  </tr>
              </table>  
          </form>           
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
  </body>
</html>
