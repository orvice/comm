using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class user_user_panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

        else
        {  
            //string Label1.Text = "";
            // Label1.Text = Session["username"].ToString();
        }
    }
}