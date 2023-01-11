using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class AllDonations : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            string catCommand = " select * from Services where CategoryName =";
           // filterContainer.InnerHtml = "   <span class=\"label label-info pull-left\">Filter:</span>\r\n                        <span class=\"label label-info pull-right\">clear</span> <br />";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                  //  filterContainer.InnerHtml += $"  <span class=\"label label-info\">{CheckBoxList1.Items[i].Value.ToString()}</span>";
                    catCommand += $"'{CheckBoxList1.Items[i].Value.ToString()}' or CategoryName=";
                }
            }
            if (catCommand.ToCharArray()[catCommand.Length - 1] == '=')
            {
                catCommand = catCommand.Substring(0, catCommand.Length - 17);
            }
            Session["car"] = catCommand.ToString();


            if (DropDownList1.SelectedValue != "Sort")
            {
               // filterContainer.InnerHtml += $"  <span class=\"label label-danger\">{DropDownList1.Text}</span>";

            }


            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cmd;
            if (Session["car"] != null)
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($"{Session["car"].ToString()} ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"{Session["car"].ToString()}", connection);


                }
            }
            else
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($"select * from Services ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"select * from Services", connection);

                }
            }

            SqlDataReader reader = cmd.ExecuteReader();

            Cards.InnerHtml = "";


            while (reader.Read())
            {
                HtmlGenericControl div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "col-lg-3 col-md-6 col-12");
                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "single-product");
                div1.Attributes.Add("id", $"sg-{reader[0]}");
                div2.Attributes.Add("style", "border:1px solid #39B5E0;padding:2px");
                HtmlGenericControl div3 = new HtmlGenericControl("div");
                div3.Attributes.Add("class", "product-img");
                div3.InnerHtml = $"<img class=\"default-img\" src=\"{reader[4]}\" alt=\"#\">";
                HtmlGenericControl div4 = new HtmlGenericControl("div");
                div4.Attributes.Add("class", "button-head");
                HtmlGenericControl div5 = new HtmlGenericControl("div");
                div5.Attributes.Add("class", "product-action");
                div4.Attributes.Add("class", "button-head");
                LinkButton req = new LinkButton();
                req.Attributes.Add("data-toggle", "modal");
                req.Attributes.Add("data-target", "#exampleModal");
                req.Attributes.Add("title", "Quick View");
                req.Attributes.Add("class", "btn");
                req.Attributes.Add("style", "background-color:white;font-size:12px;height:45px;border:1px solid #39B5E0");
                req.ID = $"ReqBtn-{reader[0]}"; 
                req.Text = "Request";
                req.OnClientClick = $"modlar(\"{reader[4]}\",\"{reader[2]}\",\"{reader[0]}\" , this)";
                HtmlGenericControl div6= new HtmlGenericControl("div");
                div6.Attributes.Add("class", "product-action-2");
                Button detailsLink= new Button();
                detailsLink.Attributes.Add("class", "btn");
                detailsLink.Attributes.Add("style", "color:white;background-color:#06283D");
                detailsLink.Text = "Details";
                detailsLink.PostBackUrl = $"SingleDonation.aspx?DonationId={reader[0]}";
               
                div5.Controls.Add(req);
                div4.Controls.Add(div5);
                div6.Controls.Add(detailsLink);
                div4.Controls.Add(div6);
                div3.Controls.Add(div4);
                div2.Controls.Add(div3);
                HtmlGenericControl div7= new HtmlGenericControl("div");
                div7.Attributes.Add("class", "product-content");
                div7.Attributes.Add("style", "padding-left:10px;");
                HtmlGenericControl h3 = new HtmlGenericControl("h3");
                h3.InnerText = $"{reader[2]}";
                div7.Controls.Add(h3);
                HtmlGenericControl div8= new HtmlGenericControl("div");
                div8.Attributes.Add("class", "product-price");
           
              
                div8.InnerHtml = "<span>Condition:</span>";

                div2.Controls.Add(div3);
                div7.Controls.Add(div8);
                div2.Controls.Add(div7);
                div1.Controls.Add(div2);
                Cards.Controls.Add(div1);
                //Cards.InnerHtml +=
                //    $"<div class=\"col-lg-3 col-md-6 col-12\" >" + 1>2>3>img+4>5>
                //       $"<div class=\"single-product\"  style=\"border:1px solid #39B5E0;padding:2px\">" +
                //                  $"<div class=\"product-img\">" +
                //                 $"<img class=\"default-img\" src=\"{reader[4]}\" alt=\"#\">" +
                //                   $"<div class=\"button-head\">" +
                //                      $"<div class=\"product-action\">" +
                //                           $"<a data-toggle=\"modal\" data-target=\"#exampleModal\" title=\"Quick View\" href=\"#\" class=\"btn\" style=\"background-color:white;font-size:12px;border:1px solid #39B5E0 \">Request</a>" +
                //                         $"</div>" +//
                //                      $"<div class=\"product-action-2\">" +
                //                           $"<button class=\"btn\" style=\"color:white\">Details</button>" +
                //                      $"</div>" +
                //                    $"</div>" +
                //                   $"</div>" +

                //            $"<div class=\"product-content\" style='padding-left:10px;'>" +
                //               $"<h3>{reader[2]}</h3>" +
                //                $"<div class=\"product-price\">" +
                //                    $"<span>Condition:</span>" +
                //                $"</div>" +
                //            $"</div>" +
                //        $"</div>" +
                //    $"</div>";


                /*<div class="col-lg-3 col-md-6 col-12">
                 * <div class="single-product" style="border:1px solid #39B5E0;padding:2px">
                 * <div class="product-img">
                 * <img class="default-img" src="latera_new navigation.jpg" alt="#"><div class="button-head">
                 * <div class="product-action">
                 * <a id="MainContent_ReqBtn-5" data-toggle="modal" data-target="#exampleModal" title="Quick View" class="btn" href="javascript:__doPostBack('ctl00$MainContent$ReqBtn-5','')" style="background-color:white;font-size:12px;border:1px solid #39B5E0">Request</a>
                 * </div>
                 * <div class="product-action-2"><a class="btn" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$ctl08&quot;, &quot;&quot;, false, &quot;&quot;, &quot;SingleDonation.aspx?DonationId=5&quot;, false, true))" style="color:white">Details</a>
                 * </div>
                 * </div>
                 * </div>
                 * <div class="product-content" style="padding-left:10px;">
                 * <div class="product-price">
                 * <h3>bed</h3>
                 * <div>
                 * <span>Condition:</span>
                 * </div></div></div></div></div>*/

            }

            ScriptManager.RegisterStartupScript(
                         UpdatePanel1,
                         this.GetType(),
                         "gg",
                         "gg();",
                         true);
            connection.Close();


        }
        protected void goToDetails(object sender, EventArgs e)
        {
            Button thisbtn = (Button)sender;


            Response.Redirect($"users\\singleDonation.aspx?donationid={thisbtn.ID.Split('-')[1]}");
        }
  
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(
                   UpdatePanel1,
                   this.GetType(),
                   "gg",
                   "gg();",
                   true);

        }

        protected void adad(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_DataBound(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(
                         UpdatePanel1,
                         this.GetType(),
                         "gg",
                         "gg();",
                         true);
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Text == "0")
                {

                    CheckBoxList1.Items[i].Enabled = false;
                    CheckBoxList1.Items[i].Attributes.Add("class", "gr");
                }
                CheckBoxList1.Items[i].Text = $"{CheckBoxList1.Items[i].Value}  <span class=\"badge-secondary pull-right\" style='width:10%;position:absolute;right:2%;text-align:center;background-color:#39B5E0'>{CheckBoxList1.Items[i].Text.ToString()}</span>";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(
       UpdatePanel1,
       this.GetType(),
       "gg",
       "gg();",
       true);
        }

        protected void PostRequest_Click(object sender, EventArgs e)
        {
           
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand($"insert into Orders values(@DonationId, @BenId , @Date , @OrderStatus , @Quantity)", connection);
            command.Parameters.AddWithValue("@DonationId", HiddenField1.Value.ToString());
            command.Parameters.AddWithValue("@BenId", "244582bc-c230-4358-be17-1efa5fc6b11d");
            command.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
            command.Parameters.AddWithValue("@Quantity", TextBox1.Text);
            command.Parameters.AddWithValue("@OrderStatus", "wait");
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message(\" {TextBox1.Text}\" ,\"{HiddenField2.Value.ToString()}\");", true);
          

        }

        //protected void PostRequest_Click(object sender, EventArgs e)
        //{
        //    Label1.Text = "asdasd";
        //    Label1.Text = HiddenField1.Value.ToString();

        //    var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        //    SqlConnection connection = new SqlConnection(connectionString);
        //    SqlCommand command = new SqlCommand($"insert into Orders values(@DonationId, @BenId , @Date , @OrderStatus , @Quantity)", connection);
        //    command.Parameters.AddWithValue("@DonationId", HiddenField1.Value.ToString());
        //    command.Parameters.AddWithValue("@BenId", "244582bc-c230-4358-be17-1efa5fc6b11d");
        //    command.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
        //    command.Parameters.AddWithValue("@Quantity", TextBox1.Text);
        //    command.Parameters.AddWithValue("@OrderStatus", "wait");
        //    connection.Open();
        //    command.ExecuteNonQuery();
        //    connection.Close();
        //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message(\" {TextBox1.Text}\" ,\"{Session["name"].ToString()}\");", true);
        //}
    }
}