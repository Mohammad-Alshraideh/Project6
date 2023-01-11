using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["DIO"] = "6065893e-3527-4693-917e-c0ab0fa8445b";
            Session["id"] = "5fa4c99d-6178-4329-ba50-d5d5b71e3677";
        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string query = $"select Image FROM Services where ProviderID='" + Session["DIO"] + "' and ServiceID=2";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            string IMAGE = rolecommand.ExecuteScalar().ToString();

            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;


            if (fileUpload.FileName != null && fileUpload.FileName != string.Empty)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
                SqlDataSource1.UpdateParameters["Image"].DefaultValue = "~/img/" + fileUpload.FileName;
            }
            else
            {
                SqlDataSource1.UpdateParameters["Image"].DefaultValue = IMAGE;
            }
            DropDownList DL = GridView1.Rows[e.RowIndex].FindControl("DropDownList5") as DropDownList;

            SqlDataSource1.UpdateParameters["CategoryName"].DefaultValue = DL.SelectedValue; ;

            SqlDataSource1.Update();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //foreach(TableRow xx in GridView1.Rows)
            //{
            //    xx.Cells[7].Text = "Accept";
            //    if (xx.Cells[5].Text == "1")
            //    {
            //        xx.Cells[5].Text = "Accept";
            //    }
            //    //else if (xx.Cells[5].Text == "0")
            //    //{
            //    //    xx.Cells[5].Text = "Waiting";

            //    //}
            //    //else if (xx.Cells[5].Text == "3")
            //    //{
            //    //    xx.Cells[5].Text = "Rejected";

            //    //}
            //}

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}