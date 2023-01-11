using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["maessage"].DefaultValue = TextBox3.Text;
            SqlDataSource1.Insert();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
               "swal('Thank you', 'We will contact you soon..', 'success')", true);
        }
    }

}