<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item_list.aspx.cs" Inherits="user_item_list" %>


<!DOCTYPE html>
<html lang="en">
  <head>
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
            <li class="active"><a href="item_list.aspx">报修列表</a></li>
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
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">报修列表 Item List</h1>

          <div class="row placeholders">
         
           <form id="form1" runat="server"> 
             
             <asp:GridView ID="GV1"   class="table table-striped"  runat="server">
             </asp:GridView>

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
