<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 118px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    USER Reg</td>
            </tr>
            <tr>
                <td class="style2">
                    UserName:</td>
                <td>
                    <asp:TextBox ID="text_username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    UserPW:</td>
                <td>
                    <asp:TextBox ID="text_userpwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
