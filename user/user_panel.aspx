<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_panel.aspx.cs" Inherits="user_user_panel" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>小区报修系统-用户中心 User Center</title>
    <!-- Load  /lib/user_header.inc -->
    <!--#include File="../lib/user_header.inc"-->
  </head>

  <body>

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
            <li class="active"><a href="#">用户中心</a></li>
            <li><a href="item_submit.aspx">提交报修</a></li>
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
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">用户中心 User Center</h1>

          <div class="row placeholders">
              

             
              
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 你好，欢迎使用报修系统，请从左侧选择需要的操作，有问题请联系管理员。
            
          </div>

          <h2 class="sub-header">控制面板</h2>
          <div class="table-responsive">
            <div class="row demo-tiles">
        <div class="col-xs-3">
          <div class="tile">
            <img src="../images/icons/png/Pensils.png" alt="Compas" class="tile-image big-illustration">
            <h3 class="tile-title">Submit</h3>
            <p>在线提交报修</p>
            <a class="btn btn-primary btn-large btn-block" href="item_submit.aspx">提交报修</a>
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
            <img src="../images/icons/png/Mail.png" alt="Pensils" class="tile-image">
            <h3 class="tile-title">Contact Admin</h3>
            <p>有任何问题请联系管理员 </p>
            <a class="btn btn-primary btn-large btn-block" href="contact_admin.aspx">联系管理</a>
          </div>
        </div>

        <div class="col-xs-3">
          <div class="tile">
            <img src="../images/icons/png/Book.png" alt="Chat" class="tile-image">
            <h3 class="tile-title">Profile</h3>
            <p>修改用户资料</p>
            <a class="btn btn-primary btn-large btn-block" href="user_profile.aspx">资料修改</a>
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
