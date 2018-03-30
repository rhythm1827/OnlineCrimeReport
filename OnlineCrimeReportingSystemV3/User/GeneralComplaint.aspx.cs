using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_GeneralComplaint : System.Web.UI.Page
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
        generalComplain p = new generalComplain();

        p.date = Convert.ToDateTime(TextBox2.Text);
        p.matter = RadioButtonList1.Text;
        p.area = TextBox3.Text;
        p.details = TextBox1.Text;
        p.policestation = DropDownList1.Text;
        p.attachment = FileUpload1.FileName;
        p.userid = Convert.ToString(Session["uname"]);
        db.generalComplains.InsertOnSubmit(p);
        db.SubmitChanges();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label1.Text = "Complained Successfully!!!";
        Label1.Visible = true;
    }
}