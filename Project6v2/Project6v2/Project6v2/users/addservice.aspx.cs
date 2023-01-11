using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2.users
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            Session["id"] = "5fa4c99d-6178-4329-ba50-d5d5b71e3677";
            string path1 = Server.MapPath("~/img/");
            FileUpload1.SaveAs(path1 + Path.GetFileName(FileUpload1.FileName));

            SqlDataSource1.InsertParameters["ServiceName"].DefaultValue = ServiceName.Text;
            SqlDataSource1.InsertParameters["Description"].DefaultValue = Discription.Value.ToString();
            SqlDataSource1.InsertParameters["Status"].DefaultValue = "0";
            SqlDataSource1.InsertParameters["Quantity"].DefaultValue = quantity.Text;
            SqlDataSource1.InsertParameters["LeftQuantity"].DefaultValue = quantity.Text;


            SqlDataSource1.InsertParameters["Image"].DefaultValue = "~/img/" + Path.GetFileName(FileUpload1.FileName);

            SqlDataSource1.InsertParameters["CategoryName"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["ProviderID"].DefaultValue = Session["id"].ToString();
            SqlDataSource1.InsertParameters["ServiceTime"].DefaultValue = DateTime.Now.ToString();

            SqlDataSource1.Insert();

            //Response.Redirect("https://localhost:44300/providerProfile#");
        }
    }
}