using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_contact_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果没有登录，跳转到登录页面。
        if (Session["username"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

        //已经登录，获取登录的用户名并存到Label
        else
        {
            //string Label1.Text = "";
            Label1.Text = Session["username"].ToString();
            Label2.Text = Session["user_fullname"].ToString();
            //Label3.Text = Session["user_id"].ToString();
        }
    }


    protected void contact_admin_botton_Click(object sender, EventArgs e)
    {
        //获取tk
        string tk = ticket.Text.ToString().Trim();
        string user_name = Session["username"].ToString();
        string user_id = Session["user_id"].ToString();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();

        //写入语句
        string tk_add = "insert into [comm_tk](tk_user_id,tk_user_name,tk_content) values('" + user_id + "','" + user_name + "','" + tk + "')";
        SqlCommand cmd_tk_add = new SqlCommand(tk_add, conn);
        cmd_tk_add.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script language=javascript>alert('提交成功 ')</script>");
    }
}