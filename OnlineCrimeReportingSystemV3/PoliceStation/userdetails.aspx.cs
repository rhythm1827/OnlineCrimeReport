using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.IO;
public partial class PoliceStation_userdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = true;
    }
    protected void ExportToExcel(GridView GrdView)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GrdView.AllowPaging = false;
            GrdView.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in GrdView.HeaderRow.Cells)
            {
                cell.BackColor = GrdView.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = GrdView.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = GrdView.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }

            GridView1.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // Verifies that the control is rendered
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ExportToExcel(GridView1);
    }
    */
}