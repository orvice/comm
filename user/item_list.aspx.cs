using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_item_list : System.Web.UI.Page
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

        if (!IsPostBack)
        { gv_bind(); }
    }

    public void gv_bind()
    {
        string user_id = Session["user_id"].ToString();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        //conn.Open();
        string gv_sql = "select * from comm_item_log WHERE user_id = '"+ user_id+ "' ";

        SqlDataAdapter gv = new SqlDataAdapter(gv_sql,conn);
        DataSet ds = new DataSet();

        try
        {
            conn.Open();
            gv.Fill(ds, "comm_item_log");
            GV1.DataSource = ds.Tables["comm_item_log"].DefaultView;
            GV1.DataKeyNames = new string[] { "item_id" };
            GV1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally
        {
            conn.Close();
        }

    }
}