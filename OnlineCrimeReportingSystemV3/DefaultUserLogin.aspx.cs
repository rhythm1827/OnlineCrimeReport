using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    // SqlDataReader dr;
    string q;
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        q = "select * from u_registration where email='" + TxtEmailId.Text + "' and password='" + TxtPassword.Text + "'";
        cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\projectLocalDB.mdf;Integrated Security=True;Connect Timeout=30");
        cn.Open();
        cmd = new SqlCommand(q, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            
            Session["uname"] = TxtEmailId.Text;//stored textbox1 value into session
            //Session["uid"] = 
            Response.Redirect("~/User/UserHomeDefault.aspx");

        }
        else
        {
            Response.Write("<script language='javascript'> alert('Your userid is wrong plz check it...');</script>");
        }
    }
}