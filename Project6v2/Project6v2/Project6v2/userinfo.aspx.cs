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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["bb"] == "1")
            {
                Wizard1.ActiveStepIndex = 2;
            }
            else if (Request.QueryString["bb"] == "2") { Wizard1.ActiveStepIndex = 3; }
            else if (Request.QueryString["x"] != null)
            {
                Wizard1.ActiveStepIndex = 3;
            }
            else if (Request.QueryString["c"] == "c")
            {
                Wizard1.ActiveStepIndex = 1;
            }
            else Wizard1.ActiveStepIndex = 0;

            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string query = $"select COUNT(*) FROM AspNetUsers";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            string NUMUSER = rolecommand.ExecuteScalar().ToString();
            int x = Convert.ToInt32(NUMUSER);
            x--;
            Session["totalnum"] = x;

            string query2 = $"select COUNT(*) FROM AspNetUsers inner join AspNetUserRoles on Id=UserId and RoleId=2";
            SqlCommand rolecommand2 = new SqlCommand(query2, Con);
            string prov = rolecommand2.ExecuteScalar().ToString();
            Session["provnum"] = prov;


            string query3 = $"select COUNT(*) FROM AspNetUsers inner join AspNetUserRoles on Id=UserId and RoleId=3";
            SqlCommand rolecommand3 = new SqlCommand(query3, Con);
            string use = rolecommand3.ExecuteScalar().ToString();
            Session["usernum"] = use;

            double u = Convert.ToDouble(Session["usernum"]);
            double p = Convert.ToDouble(Session["provnum"]);
            double tot = Convert.ToDouble(Session["totalnum"]);
            double userper = (u / tot) * 100;
            int xxx = Convert.ToInt32(userper);
            double provper = (p / tot) * 100;
            int yyy = Convert.ToInt32(provper);
            /***************************************************************/
            string all = $"select COUNT(*) FROM Services";
            SqlCommand commandall = new SqlCommand(all, Con);
            string NUMALL = commandall.ExecuteScalar().ToString();
            double allD = Convert.ToDouble(NUMALL);
            Session["ALLDon"] = allD;
            /**************************************************************/
            string app = $"select COUNT(*) FROM Services where Status=1";
            SqlCommand commandapp = new SqlCommand(app, Con);
            string NUMApp = commandapp.ExecuteScalar().ToString();
            double appro = Convert.ToDouble(NUMApp);
            Session["approval"] = appro;
            double donaPer = (appro / allD) * 100;
            int IdonaPer = Convert.ToInt32(donaPer);
            /***************************************************************/
            Con.Close();
            percent1.Attributes.Add("stroke-dasharray", $"{xxx}, 100");
            firstPercent.InnerText = Convert.ToString(xxx) + "%";

            percent2.Attributes.Add("stroke-dasharray", $"{IdonaPer}, 100");
            secPercent.InnerText = Convert.ToString(IdonaPer) + "%";

            percent3.Attributes.Add("stroke-dasharray", $"{yyy}, 100");
            thirdPercent.InnerText = Convert.ToString(yyy) + "%";
            //Label6.Text = "The Number Of Users Is : " + Session["usernum"]+ "<br/> <span style='color:red; font-weight:bold'> (" + xxx + " % )</span> ";
            //Label7.Text = "The Number Of Donors Is : " + Session["provnum"] + "<br/> <span style='color:red; font-weight:bold'> (" + yyy + " % )</span>";
            BB.Text = u.ToString();
            DD.Text = p.ToString();
            DON.Text = appro.ToString();


        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        { }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //string ss = GridView4.Rows[e.RowIndex]
            //SqlDataSource4.UpdateParameters["Status"].DefaultValue = "1";

            //SqlDataSource4.Update();
        }


        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView4_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("Accepted") == 0)
            {
                int productID = Convert.ToInt32(GridView4.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Services set Status=1 where ServiceID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("UsersInfo.aspx?x=ss");
            }
            else if (e.CommandName.CompareTo("Rejected") == 0)
            {

                int productID = Convert.ToInt32(GridView4.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Services set Status=3 where ServiceID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("UsersInfo.aspx?x=ss");
            }
        }

        protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {

        }
    }
}