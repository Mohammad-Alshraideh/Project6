using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Project6v2.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string catCommand = " select * from Services where CategoryName =";
            filterContainer.InnerHtml = "   <span class=\"label label-info pull-left\">Filter:</span>\r\n                        <span class=\"label label-info pull-right\">clear</span> <br />";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                    filterContainer.InnerHtml += $"  <span class=\"label label-info\">{CheckBoxList1.Items[i].Value.ToString()}</span>";
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
                filterContainer.InnerHtml += $"  <span class=\"label label-danger\">{DropDownList1.Text}</span>";

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

            mainContent.InnerHtml = "";
            int px = 0;
            while (reader.Read())
            {
                px += 80;
                space.Attributes.Add("style", $"height:{px}px");
                HtmlGenericControl div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "col-lg-2");
                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "ab");
                HtmlGenericControl div3 = new HtmlGenericControl("div");
                div3.Attributes.Add("class", "card1");
                div3.Attributes.Add("style", "border:1px solid rgb(57, 181, 224);padding:0;position:relative;");
                HtmlGenericControl div4 = new HtmlGenericControl("div");
                div4.Attributes.Add("class", "user-info");
                HtmlGenericControl div5 = new HtmlGenericControl("div");
                div5.InnerHtml = $"<img src ='{reader[4]}' style='width:30px;border-radius:50%'/>";

                HtmlGenericControl div6 = new HtmlGenericControl("div");
                div6.Attributes.Add("style", "font-size:12px");
                div6.InnerHtml = $"<span>fasdas</span><br />" +
                    $"<span>Phone:0788888888</span><br />" +
                    $"<span>Email:example@gmail.com</span>";
                div4.Controls.Add(div5);

                div4.Controls.Add(div6);
                HtmlGenericControl div7 = new HtmlGenericControl("div");
                div7.Attributes.Add("class", "img-container");
                div7.Attributes.Add("style", "position:relative;width:100%");
                div7.InnerHtml = $"<img src=\"{reader[4]}\" />";
                HtmlGenericControl div71 = new HtmlGenericControl("div");

                div71.Attributes.Add("style", "position:absolute;width:100%;height:100%;text-align:center;top:20px;font-size:16px");
                div71.InnerHtml = $" <span syle=\"width:100%;\">{reader[2]}</span>" + //service name
                    $" <hr style=\"border-top: 1px solid rgb(57, 181, 224);\" />";
                div7.Controls.Add(div71);
                div3.Controls.Add(div7);
                HtmlGenericControl ul = new HtmlGenericControl("ul");
                ul.Attributes.Add("class", "social-media");
                HtmlGenericControl li1 = new HtmlGenericControl("li");
                HtmlGenericControl li2 = new HtmlGenericControl("li");
                Button btnReq = new Button();
                btnReq.CssClass = "card-btn";

                btnReq.Text = "Request Item";
                Button btnDet = new Button();
                btnDet.Click += new EventHandler(this.goToDetails);
                btnDet.CssClass = "card-btn";
                btnDet.Text = "More Details";
                btnDet.ID = $"btn-{reader[0]}";
                li1.Controls.Add(btnReq);
                li2.Controls.Add(btnDet);
                ul.Controls.Add(li1);
                ul.Controls.Add(li2);
                div4.Controls.Add(ul);
                div3.Controls.Add(div4);
                div2.Controls.Add(div3);
                div1.Controls.Add(div2);
                mainContent.Controls.Add(div1);


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

            Response.Redirect($"singleService.aspx?serviceid={thisbtn.ID.Split('-')[1]}");
        }
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void adad(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Text == "0")
                {

                    CheckBoxList1.Items[i].Enabled = false;
                    CheckBoxList1.Items[i].Attributes.Add("class", "gr");
                }
                CheckBoxList1.Items[i].Text = $"{CheckBoxList1.Items[i].Value}  <span class=\"label label-primary pull-right\" style='width:10%;position:absolute;right:2%;'>{CheckBoxList1.Items[i].Text.ToString()}</span>";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}