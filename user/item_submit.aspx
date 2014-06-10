<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item_submit.aspx.cs" Inherits="user_item_submit" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>小区报修系统-提交报修 Items Submit</title>
    <!-- Load  /lib/user_header.inc -->
    <!--#include File="../lib/user_header.inc"-->
  </head>

<body>
  <form id="form1" runat="server"> 
    <!-- Load  /lib/user_nav.inc            -->
    <!--#include File="../lib/user_nav.inc" -->

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
               <td height="50"  >问题描述</td>
               <td ><asp:TextBox ID="item_info_text" value="" placeholder="简述需要保修的问题" class="form-control" runat="server" ></asp:TextBox>  </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ErrorMessage="请输入问题描述" ControlToValidate="item_info_text"></asp:RequiredFieldValidator></td>
               </tr>

               <tr>
               <td height="50"  >问题地址</td>
               <td><asp:TextBox ID="item_add_text" placeholder="输入问题所在地" class="form-control" runat="server" ></asp:TextBox> </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ErrorMessage="请输入问题地址" ControlToValidate="item_add_text"></asp:RequiredFieldValidator></td>
               </tr> 
               
               <tr>
               <td height="50" >选择分类</td>
               <td >                
                   <asp:DropDownList ID="DD1"  class="selectpicker" runat="server">
                   </asp:DropDownList>                
               </td>
               <tr>          

               <tr>
               <td colspan="1" align="center">   
               <asp:Button ID="item_submit_botton" class="btn btn-lg btn-info" runat="server" Text="提交报修" onclick="item_submit_botton_Click"  />  
               </td> 
               </tr>               

              <tr>
              <td colspan="2" align="right"> 
                    <p align="center" data-toggle="tooltip" data-placement="bottom" title="将用您的ID提交给管理员">您的ID为: <asp:Label id="Label3"   Runat="server" Text="Label"></asp:Label></p>  
              </td>  
              </tr>

              </table>
      </div>      

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

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
    <script src="../js/application.js"></script>

  </form>
  </body>
</html>
