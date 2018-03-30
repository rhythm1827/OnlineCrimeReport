using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_MissingPerson : System.Web.UI.Page
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
            missingPerson msp = new missingPerson();
            msp.complainid = 0;
            msp.complainby = Convert.ToString(Session["uname"]);
            msp.name = TextBox1.Text;
            msp.address = TextBox2.Text;
            msp.reward = Convert.ToInt32(TextBox3.Text);
            msp.lastplace = TextBox4.Text;
            msp.date = Convert.ToDateTime(TextBox5.Text);
            msp.time = TimeSpan.Parse(TextBox6.Text);
            msp.cnumber = Convert.ToInt16(TextBox7.Text);
            msp.height = Convert.ToDecimal(TextBox8.Text);
            msp.weight = Convert.ToDecimal(TextBox9.Text);
            msp.image = FileUpload1.FileName;
            db.missingPersons.InsertOnSubmit(msp);
            db.SubmitChanges();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label11.Text = "Successfully Complained!!";
            Label11.Visible = true;
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
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

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 5 && args.Value.Length <= 55)
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
        if (args.Value.Length >= 5 && args.Value.Length <= 55)
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
        if (args.Value.Length >= 5 && args.Value.Length <= 25)
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
        string data = args.Value;
        args.IsValid = false;
        double filesize = FileUpload1.FileContent.Length;
        if (filesize > 102400)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg" };
        string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        bool isValidFile = false;
        for (int i = 0; i < validFileTypes.Length; i++)
        {
            if (ext == "." + validFileTypes[i])
            {
                isValidFile = true;
                break;
            }
        }
        if (!isValidFile)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}