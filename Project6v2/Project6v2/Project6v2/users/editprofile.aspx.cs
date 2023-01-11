using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2.users
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["id"] = "5fa4c99d-6178-4329-ba50-d5d5b71e3677";

        }


        protected void Button2_Click(object sender, EventArgs e)
        {


            // Get the FileUpload control in the row
            FileUpload fileUpload1 = (FileUpload)FindControl("FileUpload1");

            // Check if a file has been selected
            if (fileUpload1.HasFile)
            {
                // Get the file and save it to the server

                Response.Redirect("EditProfil.aspx");
                // Perform the action for the uploaded file
                // (e.g. insert the file information into the database, etc.)

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            //int editedRowIndex = GridView1.EditIndex;
            //TextBox textBox = (TextBox)GridView1.Rows[editedRowIndex].FindControl("TextBox1");
            //string value = textBox.Text;
            //SqlDataSource1.UpdateParameters["UserName"].DefaultValue = value;
            //SqlDataSource1.Insert();






        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            TextBox txtName = (TextBox)row.FindControl("TextBox1");
            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            string name = fileUpload.FileName;


            if (fileUpload.HasFiles)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("images"), fileUpload.FileName));
                TextBox texto = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
                texto.Text = fileUpload.FileName;
                string moath9 = "~/userimages/" + fileUpload.FileName;
                SqlDataSource1.UpdateParameters["userimages"].DefaultValue = "~/userimages/" + fileUpload.FileName;
               
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}