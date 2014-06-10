<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tk_list.aspx.cs" Inherits="admin_tk_list" %>
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
            <li><a href="item_list.aspx">报修列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="tk_list.aspx">工单列表</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="admin_change_pwd.aspx">更改密码</a></li>            
            <li><a href="logout.aspx">退出登录</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">工单列表 Tickets List</h1>

          <div class="row placeholders">  
           <form id="form1" runat="server"> 
                
              <asp:GridView ID="GridView1" class="table table-striped" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="tk_id" DataSourceID="SqlDataSource1"    >
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="tk_id" HeaderText="tk_id" InsertVisible="False" 
                          ReadOnly="True" SortExpression="tk_id" />
                      <asp:BoundField DataField="tk_user_id" HeaderText="tk_user_id" 
                          SortExpression="tk_user_id" />
                      <asp:BoundField DataField="tk_user_name" HeaderText="tk_user_name" 
                          SortExpression="tk_user_name" />
                      <asp:BoundField DataField="tk_content" HeaderText="tk_content" 
                          SortExpression="tk_content" />
                  </Columns>
                 
              </asp:GridView>              
          
              <asp:SqlDataSource ID="SqlDataSource1"  runat="server" 
                  ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                  DeleteCommand="DELETE FROM [comm_tk] WHERE [tk_id] = @tk_id" 
                  InsertCommand="INSERT INTO [comm_tk] ([tk_user_id], [tk_user_name], [tk_content]) VALUES (@tk_user_id, @tk_user_name, @tk_content)" 
                  SelectCommand="SELECT * FROM [comm_tk]" 
                  UpdateCommand="UPDATE [comm_tk] SET [tk_user_id] = @tk_user_id, [tk_user_name] = @tk_user_name, [tk_content] = @tk_content WHERE [tk_id] = @tk_id">
                  <DeleteParameters>
                      <asp:Parameter Name="tk_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="tk_user_id" Type="Int32" />
                      <asp:Parameter Name="tk_user_name" Type="String" />
                      <asp:Parameter Name="tk_content" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="tk_user_id" Type="Int32" />
                      <asp:Parameter Name="tk_user_name" Type="String" />
                      <asp:Parameter Name="tk_content" Type="String" />
                      <asp:Parameter Name="tk_id" Type="Int32" />
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
