using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {

        }
        else
        {
            Response.Redirect("../HomePage.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session.Clear();     
        Response.Redirect("HomePage.aspx");//LoginPage
    }
}