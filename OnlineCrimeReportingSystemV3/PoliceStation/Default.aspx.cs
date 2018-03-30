using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class PoliceStation_Default : System.Web.UI.Page
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
        Label1.Text = Convert.ToString(Session["uname"]);
        Label1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}