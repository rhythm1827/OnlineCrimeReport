using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
public partial class UserRegistration : System.Web.UI.Page
{
    DataClassesAllDataContext dbReg = new DataClassesAllDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Registration();
            Response.Redirect("DefaultUserLogin.aspx");
        }
    }
    private void Registration()
    {
        u_registration regis = new u_registration();
        regis.name = TextBox2.Text;
        regis.email = TextBox1.Text;
        regis.gender = RadioButtonList1.Text;
        regis.password = TextBox3.Text;
        regis.contact = TextBox5.Text;
        regis.address = TextBox6.Text;
        regis.postalCode = TextBox7.Text;
        regis.district = DropDownList1.Text;
        regis.edu = DropDownList2.Text;
        regis.photoid = TextBox8.Text;
        regis.image = FileUpload1.FileName;
        regis.policestation = DropDownList3.Text;

        dbReg.u_registrations.InsertOnSubmit(regis);
        dbReg.SubmitChanges();
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(args.Value.Length>=5&& args.Value.Length<=30)
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
        if (args.Value.Length >= 8 && args.Value.Length <= 20)
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
        if (args.Value.Length >= 5 && args.Value.Length <= 20)
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

    protected void CustomValidator8_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg"};
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

    protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 4 && args.Value.Length <= 10)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator7_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length <= 40)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    
}