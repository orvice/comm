using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_botton_Click(object sender, EventArgs e)
    {
        //获取登陆框的用户名和密码
        string user_name = username.Text.ToString().Trim();
        string user_pwd = userpwd.Text.ToString().Trim();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
         
        SqlConnection conn = new SqlConnection(s);
        conn.Open();
        //查询用户名
        string s_1 = " slect * from [dbo.comm_user] where user_name= ‘" + user_name + " '";

        
        SqlCommand cmd_1 = new SqlCommand(s_1,conn);
        
        
        SqlDataReader dr = cmd_1.ExecuteReader();

        if (dr.Read())
        {
            //用户名存在
            if (dr["user_pwd"].ToString() != user_pwd )
            {
                //密码错误
            }
            else
            {
                //密码正确
            }
        }

        else
        {
            //用户名不存在
            Response.Write("<script language=javascript>alert('此用户不存在')</script>");
        }


        //用户名or密码未输入
        if (user_name == "" || user_pwd == "")
        {
            Response.Write("<script language=javascript>alert('用户名或密码未输入')</script>");

        }
        

    }
}