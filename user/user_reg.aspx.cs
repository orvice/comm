using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = text_username.Text.ToString().Trim();
        string pwd = text_userpwd.Text.ToString().Trim();

        //connect to sql server 
        string Constr = "server=(local);user id=sa;pwd=;database=user_reg";

        //实例化连接对象
        SqlConnection oc = new SqlConnection(Constr);
        //实例化Command对象
        SqlCommand com = new SqlCommand();
        com.Connection = oc;
        com.CommandText = "insert into user_info(username,userpwd) values('" + name + "','" + pwd + "')";
        try
        {//打开数据库

            oc.Open();
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('增加用户成功！')</script>");

        }
        catch (Exception ex)
        {
            Response.Write(ex);
            // Response.Write("<script language=javascript>alert('增加用户失败！')</script>");
        }
        finally
        {
            oc.Close();
        }


    }
}