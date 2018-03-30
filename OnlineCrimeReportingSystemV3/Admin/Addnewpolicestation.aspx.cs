using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Addnewpolicestation : System.Web.UI.Page
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
        if (Page.IsValid)
        {
            AddData();
        }
    }
    private void AddData()
    {
        policeStation pol = new policeStation();

        pol.password = TextBox2.Text;
        pol.name = TextBox3.Text;
        pol.area = TextBox4.Text;
        pol.address = TextBox7.Text;
        pol.email = TextBox9.Text;
        pol.contactNumber = TextBox8.Text;

        db.policeStations.InsertOnSubmit(pol);
        db.SubmitChanges();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        Label1.Text = "Inserted Successfully";
        Label1.Visible = true;
    }

    protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 5 && args.Value.Length <= 20)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 10 && args.Value.Length <= 25)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 5 && args.Value.Length <= 35)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 10 && args.Value.Length <= 35)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 10 && args.Value.Length <= 55)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 8 && args.Value.Length <= 25)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}