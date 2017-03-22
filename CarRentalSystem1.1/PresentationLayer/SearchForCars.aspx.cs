using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CarRentalSystem1._1.PresentationLayer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        public int i = 0;
        public DataSet ds = new DataSet();
        public string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(s1))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select DISTINCT Location from cardetails", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    LocationList.DataSource = ds;
                    LocationList.DataTextField = "Location";
                    //LocationList.DataValueField = "UserName";
                    LocationList.DataBind();
                    //LocationList.Items.Insert(0, new ListItem("--Select--", "0"));
                    con.Close();
                }
            }
            i = SelectionMode.SelectedIndex;
            // if the selected value is other than No preference it enters the loop
            switch (SelectionMode.SelectedIndex)
            {
                case 1:
                    //Selected Mode Based on Location
                    LocationBasedSelction.Visible = true;
                    LocationList.Visible = true;
                    DateOfTravel.Visible = false;
                    DateOfTravelLabel.Visible = false;
                    DateIcon.Visible = false;
                    Calendar1.Visible = false;
                    VehicleTypeLabel.Visible = false;
                    VehicleTypeList.Visible = false;
                    CheckAvailabilityLinkButton.Visible = true;
                    break;
                case 2:
                    // selected mode Based on Date
                    LocationBasedSelction.Visible = false;
                    LocationList.Visible = false;
                    DateOfTravel.Visible = true;
                    DateOfTravelLabel.Visible = true;
                    DateIcon.Visible = true;
                    VehicleTypeLabel.Visible = false;
                    VehicleTypeList.Visible = false;
                    CheckAvailabilityLinkButton.Visible = true;
                    break;
                case 3:
                    // selected mode Based on Vehicle type
                    LocationBasedSelction.Visible = false;
                    LocationList.Visible = false;
                    DateOfTravel.Visible = false;
                    DateOfTravelLabel.Visible = false;
                    DateIcon.Visible = false;
                    Calendar1.Visible = false;
                    VehicleTypeLabel.Visible = true;
                    VehicleTypeList.Visible = true;
                    CheckAvailabilityLinkButton.Visible = true;
                    break;
                default:
                    //Never used Just to ensure the application doesn't fails
                    LocationBasedSelction.Visible = false;
                    LocationList.Visible = false;
                    DateOfTravel.Visible = false;
                    DateOfTravelLabel.Visible = false;
                    DateIcon.Visible = false;
                    Calendar1.Visible = false;
                    VehicleTypeLabel.Visible = false;
                    VehicleTypeList.Visible = false;
                    CheckAvailabilityLinkButton.Visible = false;
                    break;
            }
        }

        protected void DateIcon_Click(object sender, ImageClickEventArgs e)
        {
            DateOfTravel.Text = "";
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            DateOfTravel.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Capturing data into session variables.
            if (e.CommandName == "Select")
            {
                Int16 i = Convert.ToInt16(e.CommandArgument);
                Session["CarCode"] = GridView1.Rows[i].Cells[1].Text;
                Session["VehicleType"] = GridView1.Rows[i].Cells[2].Text;
                Session["Location"] = GridView1.Rows[i].Cells[3].Text;
                if (Session["Useremail"] == null)
                {
                    Response.Redirect("RegistrationPage.aspx");
                }
                else
                    Response.Redirect("BookACar.aspx");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //Changing colour of Gridview on mouse hover
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string onmouseoverStyle = "this.style.backgroundColor='blue'";
                string onmouseoutStyle = "this.style.backgroundColor='white'";
                e.Row.Cells[1].Attributes.Add("onmouseover", onmouseoverStyle);
                e.Row.Cells[1].Attributes.Add("onmouseout", onmouseoutStyle);
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            LocationBasedSelction.Visible = false;
            SelectionMode.SelectedIndex = 0;
            LocationList.Visible = false;
            DateOfTravel.Visible = false;
            DateOfTravelLabel.Visible = false;
            DateIcon.Visible = false;
            Calendar1.Visible = false;
            VehicleTypeLabel.Visible = false;
            VehicleTypeList.Visible = false;
            CheckAvailabilityLinkButton.Visible = false;
        }

        protected void LinkButtonToLoginPage_Click(object sender, EventArgs e)
        {

        //    Response.Redirect("RegistrationPage.aspx");
        }

        protected void BackLinkButton_Click(object sender, EventArgs e)
        {
            LocationBasedSelction.Visible = false;
            BackLinkButton.Visible = false;
            LinkButtonToLoginPage.Visible = false;
            SelectionMode.Visible = true;
            Modeofselection.Visible = true;
            SelectionMode.SelectedIndex = 0;
            LocationList.Visible = false;
            DateOfTravel.Visible = false;
            DateOfTravelLabel.Visible = false;
            DateIcon.Visible = false;
            Calendar1.Visible = false;
            VehicleTypeLabel.Visible = false;
            VehicleTypeList.Visible = false;
            CheckAvailabilityLinkButton.Visible = false;
            GridView1.Visible = false;
        }

        protected void CheckAvailabilityLinkButton_Click(object sender, EventArgs e)
        {
            LocationBasedSelction.Visible = false;
            LocationList.Visible = false;
            DateOfTravel.Visible = false;
            DateOfTravelLabel.Visible = false;
            DateIcon.Visible = false;
            Calendar1.Visible = false;
            VehicleTypeLabel.Visible = false;
            VehicleTypeList.Visible = false;
            CheckAvailabilityLinkButton.Visible = false;
            Modeofselection.Visible = false;
            SelectionMode.Visible = false;
            BackLinkButton.Visible = true;
            //LinkButtonToLoginPage.Visible = true;
            GridView1.Visible = true;
            //CheckAvailability.Visible = false;
            switch (SelectionMode.SelectedIndex)
            {
                case 1:
                    //Selected Mode Based on Location
            using (SqlConnection con = new SqlConnection(s1))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select CarCode,Cartype,Location,AvailableFrom from cardetails where Location ='" + LocationList.SelectedValue + "'and carstatus = 'Working'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
                    //Response.Write("<script>alert('Available')</script>");
                    break;
                case 2:
                    // selected mode Based on Date
                    using (SqlConnection con = new SqlConnection(s1))
                    {
                        con.Open();
                        DateTime Today = DateTime.Now;
                        DateTime BookingDate = Today.AddDays(DateOfTravel.SelectedIndex);
                        SqlCommand cmd = new SqlCommand("Select CarCode,Cartype,Location,AvailableFrom from cardetails where DATEDIFF(DAY,AvailableFrom,'" + BookingDate + "')>0", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(ds);
                        con.Close();
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    //Response.Write("<script>alert('Available')</script>");
                    break;
                case 3:
                    // selected mode Based on Vehicle type
                    using (SqlConnection con = new SqlConnection(s1))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Select CarCode,Cartype,Location,AvailableFrom from cardetails where Cartype ='" + VehicleTypeList.SelectedValue + "'and carstatus = 'Working'", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(ds);
                        con.Close();
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    //Response.Write("<script>alert('Available')</script>");
                    break;
                default:
                    //Never used Just to ensure the application doesn't fails
                    break;
            }

        }
    }
}