using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strno = "<script>alert('username or passwd is wrong');<" + "/script>";
        if (username.Text == "admin" && userpassword.Text == "123456")
        {
            //登录成功
            Session["username"] = username.Text;
            Session["userpass"] = userpassword.Text;
            Response.Redirect("admin.aspx");

        }
        else
        {
            Page.RegisterClientScriptBlock("loginno", strno);
        }

    }
}