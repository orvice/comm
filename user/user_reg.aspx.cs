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
    protected void Reg_Click(object sender, EventArgs e)
    {
        
        //获取登陆框的用户名和密码
        string login_user_name = username.Text.ToString().Trim();
        string login_user_pwd = userpwd.Text.ToString().Trim();
        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();

    }
}