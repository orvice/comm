﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_panel.aspx.cs" Inherits="admin_admin_panel" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>小区报修系统-用户中心 User Center</title>
    <!-- Load  /lib/admin_header.inc -->
    <!--#include File="../lib/admin_header.inc"-->
  </head>

  <body>  
    <!-- Load  /lib/admin_nav.inc            -->
    <!--#include File="../lib/admin_nav.inc" -->

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">管理中心</a></li>            
            <li><a href="item_list.aspx">报修列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="tk_list.aspx">工单列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="admin_change_pwd.aspx">更改密码</a></li>            
            <li><a href="logout.aspx">退出登录</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">管理中心 Admin Center</h1>

          <div class="row placeholders">   
              
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 你好，欢迎使用管理中心，请从左侧选择需要的操作。
            
          </div>

          <h2 class="sub-header">管理面板 Admin Panel </h2>
          <div class="table-responsive">
            <div class="row demo-tiles">
        <div class="col-xs-3">
          <div class="tile">
            <img src="../images/icons/png/Pensils.png" alt="Compas" class="tile-image big-illustration">
            <h3 class="tile-title">Psssword</h3>
            <p>更新管理员的密码</p>
            <a class="btn btn-primary btn-large btn-block" href="admin_change_pwd.aspx">更改密码</a>
          </div>
        </div>

        <div class="col-xs-3">
          <div class="tile">
            <img src="../images/icons/png/Clipboard.png" alt="Infinity-Loop" class="tile-image">
            <h3 class="tile-title">Lists</h3>
            <p>查看已经提交的报修清单</p>
            <a class="btn btn-primary btn-large btn-block" href="item_list.aspx">报修列表</a>
          </div>
        </div>

        <div class="col-xs-3">
          <div class="tile">
            <img src="../images/icons/png/Infinity-Loop.png" alt="Pensils" class="tile-image">
            <h3 class="tile-title">Ticket List</h3>
            <p>查看用户提交的工单 </p>
            <a class="btn btn-primary btn-large btn-block" href="contact_admin.aspx">工单列表</a>
          </div>
        </div>

        

        </div>
      </div> <!-- /tiles -->
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
