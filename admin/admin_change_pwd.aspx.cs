using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_admin_change_pwd : System.Web.UI.Page
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

    protected void change_pwd_botton_Click(object sender, EventArgs e)
    {
        //获取文本框变量        
        string new_pwd = new_pwd_text.Text.ToString().Trim();
        string admin_id = Session["admin_id"].ToString();
        //string user_old_pwd = old_pwd_text.Text.ToString().Trim();
        //string admin_name = Session["admin_name"].ToString().Trim();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);

        //更新密码到数据库           
        //打开数据库连接
        conn.Open();
        string change_pwd = "UPDATE  [comm_admin] SET admin_pwd= '" + new_pwd + "' WHERE admin_id='" + admin_id + "' ";
        SqlCommand cmd_change_pwd = new SqlCommand(change_pwd, conn);
        cmd_change_pwd.ExecuteNonQuery();
        //关闭数据库连接并返回结果
        conn.Close();
        Response.Write("<script language=javascript>alert('修改成功 ')</script>");
        //Response.Redirect("item_panel.aspx");

    }
}