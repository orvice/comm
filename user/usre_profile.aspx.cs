using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_usre_profile : System.Web.UI.Page
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
            //Label2.Text = Session["user_fullname"].ToString();
            //Label3.Text = Session["user_id"].ToString();

            //获取用户ID和UserName
            string user_id = Session["user_id"].ToString();
            string user_name_tmp = Session["username"].ToString();
            string user_name = user_name_tmp.ToString().Trim();

            //connect to sql server 连接到数据库
            string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(s);
            //打开数据库连接
            conn.Open();
            //查询用户名
            string s_1 = " select * from [comm_user] where user_name= '" + user_name + " ' ";
            SqlCommand cmd_1 = new SqlCommand(s_1, conn);
            SqlDataReader dr = cmd_1.ExecuteReader();
            dr.Read();
            //将数据库的内容copy到textbox
            username.Text = Session["username"].ToString();
            fullname.Text = dr["user_fullname"].ToString();
            email.Text = dr["user_email"].ToString();
            add.Text = dr["user_add"].ToString();
            info.Text = dr["user_info"].ToString();
            //关闭数据库连接
            conn.Close();
        }
    }

    protected void update_botton_Click(object sender, EventArgs e)
    {

        //获取用户ID和UserName
        string user_id = Session["user_id"].ToString();
        string user_name = Session["username"].ToString();
        //获取新的用户信息
        string user_fullname = fullname.Text.ToString().Trim();
        string user_email = email.Text.ToString().Trim();
        string user_add = add.Text.ToString().Trim();
        string user_info = info.Text.ToString().Trim();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();

        string update_profile = "UPDATE  [comm_user] SET user_fullname= '" + user_fullname + "' WHERE id='" + user_id + "' ";
        SqlCommand cmd_change_pwd = new SqlCommand(update_profile, conn);
        cmd_change_pwd.ExecuteNonQuery();
        //关闭数据库连接并返回结果
        conn.Close();
        Response.Write("<script language=javascript>alert('修改成功 ')</script>");
    }
}