using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project6v2
{
    public partial class SingleDonation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand($"select * from Services where ServiceId = {Request.QueryString["donationid"].ToString()}", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()){
                DonName.InnerText = reader[2].ToString();
                DonQuantity.InnerText=$"Qantity:{ reader[9].ToString()}";
                DonCondition.InnerText = "Condition: Good";
                DonImg.Attributes.Add("src", $"{reader[4]}");
                DonBrief.InnerText = "Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n\r\nDolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.";
                Session["name"] = reader[2].ToString();
            }
            connection.Close();
        }

        protected void PostRequest_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand($"insert into Orders values(@DonationId, @BenId , @Date , @OrderStatus , @Quantity)", connection);
            command.Parameters.AddWithValue("@DonationId", Request.QueryString["donationid"].ToString());
            command.Parameters.AddWithValue("@BenId", "244582bc-c230-4358-be17-1efa5fc6b11d");
            command.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
            command.Parameters.AddWithValue("@Quantity", TextBox1.Text);
            command.Parameters.AddWithValue("@OrderStatus", "wait");
            connection.Open();
            command.ExecuteNonQuery();
           connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message(\" {TextBox1.Text}\" ,\"{Session["name"].ToString()}\");", true);

          

        }
    }
}