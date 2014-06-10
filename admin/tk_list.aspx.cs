using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_tk_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果没有登录，跳转到登录页面。
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }

        //已经登录，获取登录的用户名并存到Label
        else
        {
            //string Label1.Text = "";
            Label1.Text = Session["admin"].ToString();
            //Label2.Text = Session["admin_fullname"].ToString();
        }
    }
}