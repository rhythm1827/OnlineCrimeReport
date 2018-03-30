using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
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
        ReportCrimeToPolice();
    }
    private void ReportCrimeToPolice()
    {
        cybercrime p = new cybercrime();

        p.date = Convert.ToDateTime(TextBox1.Text);
        p.time = TimeSpan.Parse(TextBox2.Text);
        p.url = TextBox3.Text;
        p.info = TextBox4.Text;
        p.userid = Convert.ToString(Session["uname"]);
        db.cybercrimes.InsertOnSubmit(p);
        db.SubmitChanges();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Label5.Text = "Complained Successfully!!!";
        Label5.Visible = true;
    }
}