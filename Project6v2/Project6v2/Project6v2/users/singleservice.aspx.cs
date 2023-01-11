using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2.users
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id"] = "5fa4c99d-6178-4329-ba50-d5d5b71e3677";
            Session["serviceid"] = "2";
            QueryString ServiceID = new QueryString();
            ServiceID.Equals("2");
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["ServiceID"].DefaultValue = Session["serviceid"].ToString();
            SqlDataSource3.InsertParameters["CustomerID"].DefaultValue = Session["id"].ToString();
            SqlDataSource3.InsertParameters["OrderTime"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["OrderStatus"].DefaultValue = "wait";
            // Get a reference to the TextBox control

            TextBox textBox1 = (TextBox)GridView2.Rows[0].FindControl("TextBox1");

            //// Get or set the value of the TextBox
            string value1 = textBox1.Text;


            SqlDataSource3.InsertParameters["SerQuantity"].DefaultValue = value1;
            SqlDataSource3.Insert();
        }
    }
}