using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class User_MissingValuable : System.Web.UI.Page
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
            missingValueable msv = new missingValueable();
            msv.complainid = 0;
            msv.complainby = Convert.ToString(Session["uname"]);
            msv.name = TextBox1.Text;
            msv.type = DropDownList1.Text;
            msv.missedby = TextBox3.Text;
            msv.details = TextBox2.Text;
            msv.address = TextBox4.Text;
            msv.mobile = Convert.ToInt32(TextBox5.Text);
            msv.value = Convert.ToDecimal(TextBox6.Text);
            msv.date = Convert.ToDateTime(TextBox7.Text);
            msv.time = TimeSpan.Parse(TextBox8.Text);
            msv.attachment = FileUpload1.FileName;
            db.missingValueables.InsertOnSubmit(msv);
            db.SubmitChanges();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            Label11.Text = "Successfully Complained!!";
            Label11.Visible = true;
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 3 && args.Value.Length <= 25)
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
        if (args.Value.Length >= 10 && args.Value.Length <= 205)
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
        if (args.Value.Length >= 5 && args.Value.Length <= 25)
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
        if (args.Value.Length >= 8 && args.Value.Length <= 55)
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
        if (args.Value.Length >= 5 && args.Value.Length <= 25)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}