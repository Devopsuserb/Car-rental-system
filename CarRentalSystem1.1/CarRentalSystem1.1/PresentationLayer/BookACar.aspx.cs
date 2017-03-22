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
    public partial class WebForm4 : System.Web.UI.Page
    {
        public int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {  
            Location.Text = Session["Location"].ToString();
            //DateOfHiring.Text = Session["Date"].ToString();
            VehicleType.Text = Session["VehicleType"].ToString();
            //if (AvailableFromCityList.Text == "" && VehicleTypeList.SelectedValue == "0"&& DateOfHiring.Text != null)
            //{
            //    //Checking availability using DATE
            //    i = 0;
            //}
            //else if (AvailableFromCityList.Text == "")
            //{
            //    // Checking availability using Vehicle type
            //    i = 1;
            //}
            //else
            //{
            //    i = 2;
            //}
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //DateOfHiring.Text = "";
            //HiringDateSelection.Visible = true;
            //AvailableFromCityList.Text = "";
            //VehicleTypeList.Text = "No Preference";
        }

        protected void HiringDateSelection_SelectionChanged(object sender, EventArgs e)
        {
            //DateOfHiring.Text = HiringDateSelection.SelectedDate.ToShortDateString();
            HiringDateSelection.Visible = false;
        }
        protected void book()
        {
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            using (SqlConnection con = new SqlConnection(s1))
            {
                con.Open();
                DateTime Today = DateTime.Now;
                DateTime BookingDate = Today.AddDays(DateOfTravel.SelectedIndex);
                DateTime ReturnDate = BookingDate.AddDays(3);
                SqlCommand cmd;
                //string e = EmailID.Text;
                string command = "update cardetails set Bookingdate='" + BookingDate + "', AvailableFrom ='" + ReturnDate + "', email ='" + Session["Useremail"] + "'where CarCode ='" + Session["CarCode"] + "'";
                cmd = new SqlCommand(command, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            string javascript = "alert('Passwords Changed successfully!!!');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickEventScript", javascript, true);
        }
        protected void CheckAvailability_Click(object sender, EventArgs e)
        {
            book();
            Response.Redirect("Details.aspx");
        }
    }
}