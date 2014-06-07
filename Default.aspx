<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">  
    <title>小区物业管理系统</title>
    <!-- Load  lib/index_header.inc -->
    <!--#include File="lib/index_header.inc"-->
</head>
<body>

    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="#">首页</a></li>
          <li><a href="admin/admin_panel.aspx">管理后台</a></li>
          <li><a href="user/user_panel.aspx">用户面板</a></li>
        </ul>
        <h3 class="text-muted">小区报修系统</h3>
      </div>

      <div class="jumbotron">
        <h1>欢迎使用报修系统</h1>
        <p class="lead">  欢迎<del>来到召唤师峡谷</del>使用XX小区报修系统，在小区遇到任何故障均可使用本保修系统.</p>
        <p><a class="btn btn-lg btn-success" href="user/user_panel.aspx" role="button">进入用户中心</a></p>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h4>我要报修</h4>
          <p>报修用户请<a href="user/user_panel.aspx">点击这里</a>进入报修面板。</p>

           
        </div>

        <div class="col-lg-6">
           <h4>我是管理员</h4>
          <p>管理员<a href="user/admin_panel.aspx">点击这里</a>进入后台。</p>

           
        </div>
      </div>

      <div class="footer">
        <p>&copy; 小区保修系统 2014</p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
