using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class PoliceStation_ChangePassword : System.Web.UI.Page
{
    DataClassesAllDataContext db = new DataClassesAllDataContext();
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
        if (TextBox1.Text != TextBox2.Text)
        {
            Label1.Text = "Please Type Both the password same";
            Label1.Visible = true;
            Label2.Visible = false;
        }
        else
        {
            string id = Convert.ToString(TextBox1.Text); // id will be session. 
            policeStation ts = db.policeStations.Single(p => p.email == id);
            ts.password = TextBox1.Text;
            db.SubmitChanges();
            Label2.Text = "Successfully Password changed";
            Label1.Visible = false;
            Label2.Visible = true;
        }
    }
}