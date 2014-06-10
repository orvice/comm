<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item_list.aspx.cs" Inherits="admin_item_list" %>
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
            <li><a href="admin_panel.aspx">管理中心</a></li>            
            <li class="active"><a href="item_list.aspx">报修列表</a></li>
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
          <h1 class="page-header">报修列表 Items List</h1>

          <div class="row placeholders">   
              
          <form id="form1" runat="server"> 
               
              <asp:GridView ID="GridView1"  class="table table-striped" runat="server" 
                  AutoGenerateColumns="False" DataKeyNames="item_id" 
                  DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" 
                          ReadOnly="True" SortExpression="item_id" />
                      <asp:BoundField DataField="user_id" HeaderText="user_id" 
                          SortExpression="user_id" />
                      <asp:BoundField DataField="rapir_type" HeaderText="rapir_type" 
                          SortExpression="rapir_type" />
                      <asp:BoundField DataField="rapir_status" HeaderText="rapir_status" 
                          SortExpression="rapir_status" />
                      <asp:BoundField DataField="rapir_info" HeaderText="rapir_info" 
                          SortExpression="rapir_info" />
                      <asp:BoundField DataField="rapir_add" HeaderText="rapir_add" 
                          SortExpression="rapir_add" />
                  </Columns>
              </asp:GridView>              
          
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                  DeleteCommand="DELETE FROM [comm_item_log] WHERE [item_id] = @item_id" 
                  InsertCommand="INSERT INTO [comm_item_log] ([user_id], [rapir_type], [rapir_status], [rapir_info], [rapir_add]) VALUES (@user_id, @rapir_type, @rapir_status, @rapir_info, @rapir_add)" 
                  SelectCommand="SELECT * FROM [comm_item_log]" 
                  UpdateCommand="UPDATE [comm_item_log] SET [user_id] = @user_id, [rapir_type] = @rapir_type, [rapir_status] = @rapir_status, [rapir_info] = @rapir_info, [rapir_add] = @rapir_add WHERE [item_id] = @item_id">
                  <DeleteParameters>
                      <asp:Parameter Name="item_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="user_id" Type="Int32" />
                      <asp:Parameter Name="rapir_type" Type="String" />
                      <asp:Parameter Name="rapir_status" Type="String" />
                      <asp:Parameter Name="rapir_info" Type="String" />
                      <asp:Parameter Name="rapir_add" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="user_id" Type="Int32" />
                      <asp:Parameter Name="rapir_type" Type="String" />
                      <asp:Parameter Name="rapir_status" Type="String" />
                      <asp:Parameter Name="rapir_info" Type="String" />
                      <asp:Parameter Name="rapir_add" Type="String" />
                      <asp:Parameter Name="item_id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
          
           </form> 
          </div>

           
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
