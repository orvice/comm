using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_user_change_pwd : System.Web.UI.Page
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
        }
    }

    protected void change_pwd_botton_Click(object sender, EventArgs e)
    {
        //获取文本框变量        
        string new_pwd = new_pwd_text.Text.ToString().Trim();
        string user_id = Session["user_id"].ToString();
        string user_old_pwd = old_pwd_text.Text.ToString().Trim();
        string user_name = Session["username"].ToString().Trim();
        

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();

        //查询ID
        //string s_1 = " select * from [comm_user] where id= '" + user_id + " ' ";
        string ss = "select * from [comm_user]  where user_name = '" + user_name + "' ";
        SqlCommand cmd_2 = new SqlCommand(ss, conn);
        SqlDataReader dr = cmd_2.ExecuteReader();
        //保存数据库中的用户密码
        string tmp_pwd = dr["user_pwd"].ToString();
        //关闭连接
        conn.Close();
        //判断旧密码是否正确
        if ( user_old_pwd.Trim() != tmp_pwd.Trim() )
        {
            Response.Write("<script language=javascript>alert('旧密码输入错误！ ')</script>");
        }
        else
        {
            //更新密码到数据库           
            //打开数据库连接
            conn.Open();
            string change_pwd = "update from [comm_user](user_pwd) values('" + new_pwd + ") WHERE id='" + user_id + "' ";
            SqlCommand cmd_change_pwd = new SqlCommand(change_pwd, conn);
            cmd_change_pwd.ExecuteNonQuery();
            //关闭数据库连接并返回结果
            conn.Close();
            Response.Write("<script language=javascript>alert('修改成功 ')</script>");
            Response.Redirect("item_panel.aspx");
        }
    }
}