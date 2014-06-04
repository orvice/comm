using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果没有登录，跳转到登录页面。
        if (Session["username"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

        //已经登录 跳转到 Panel
        else
        {
            Response.Redirect("user_panel.aspx");
        }
    }
}