using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_item_submit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { DD1_bind(); }
        
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
            Label3.Text = Session["user_id"].ToString();
        }

        
    }

    protected void DD1_bind()
    {
        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        //conn.Open();
        string strsql = "select * from comm_rapia_type";
        SqlDataAdapter da = new SqlDataAdapter(strsql, conn);
        DataSet ds = new DataSet();
        try
        {
            conn.Open();
            da.Fill(ds, "comm_rapia_type");
            DD1.DataSource = ds.Tables["comm_rapia_type"];
            DD1.DataTextField = "r_name";
            DD1.DataValueField = "r_name";
            DD1.DataBind();
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

    protected void item_submit_botton_Click(object sender, EventArgs e)
    {
        //获取文本框变量
        string item_info   = item_info_text.Text.ToString().Trim();
        string item_add    = item_add_text.Text.ToString().Trim();
        string user_id     = Session["user_id"].ToString();
        //string item_type   = DD1.Text.ToString.Trim();

        //connect to sql server 连接到数据库
        string s = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        //打开数据库连接
        conn.Open();
    }
}