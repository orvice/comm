using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void reg_botton_Click(object sender, EventArgs e)
    {

        Response.Write("<script language=javascript>alert('提交注册 ')</script>");
        //获取登陆框的用户名和密码
        string reg_user_name       = username.Text.ToString().Trim();
        string reg_user_pwd        = userpwd.Text.ToString().Trim();
        string reg_user_fullname   = fullname.Text.ToString().Trim();
        string reg_user_email      = email.Text.ToString().Trim();
        string reg_user_add        = add.Text.ToString().Trim();
        string reg_user_info       = info.Text.ToString().Trim();
        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();
        //查询用户名
        string s_1 = " select * from [comm_user] where user_name= '" + reg_user_name + " ' ";
        SqlCommand cmd_1 = new SqlCommand(s_1, conn);
        SqlDataReader dr = cmd_1.ExecuteReader();

        if (dr.Read())
        {
            //用户名存在
            Response.Write("<script language=javascript>alert('这个用户名已经有人用了啦，请换一个 ')</script>");

        }

    }
}