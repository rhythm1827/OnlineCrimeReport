using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
public partial class ContactUs : System.Web.UI.Page
{
    DataClassesAllDataContext dc = new DataClassesAllDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        TxtName.Text = string.Empty;
        TxtEmail.Text = string.Empty;
        TxtContact.Text = string.Empty;
        TxtComment.Text = string.Empty;
        Label1.Visible = false;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            Contac cnt = new Contac();
            cnt.name = TxtName.Text;
            cnt.email = TxtEmail.Text;
            cnt.suggestion = TxtComment.Text;
            cnt.cnumber = TxtContact.Text;
            dc.Contacs.InsertOnSubmit(cnt);
            dc.SubmitChanges();
            TxtName.Text = string.Empty;
            TxtEmail.Text = string.Empty;
            TxtContact.Text = string.Empty;
            TxtComment.Text = string.Empty;
            Label1.Text = "Success!!!";
            Label1.Visible = true;
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