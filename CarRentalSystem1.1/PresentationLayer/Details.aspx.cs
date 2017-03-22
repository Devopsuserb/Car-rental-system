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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BindDetailsview()
        {
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            using (SqlConnection con = new SqlConnection(s1))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Name,Gender,Phnum,email,Addres from registrationdetailstable where email = '" + Session["Useremail"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                DetailsView.DataSource = ds;
                DetailsView.DataBind();
            }
        }

        protected void DetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {

        }

        //protected void DetailsView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    //DetailsView.EditIndex = -1; //swicth back to default mode
        //    BindDetailsview(); // Rebind GridView to show the data in default mode
        //}

        protected void DetailsView_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            //string Name = ((TextBox)DetailsView.FindControl("Name")).Text;
            string address = ((TextBox)DetailsView.FindControl("Address")).Text;
            string contact = ((TextBox)DetailsView.FindControl("Contact")).Text;
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            using (SqlConnection con = new SqlConnection(s1))
            {
                SqlCommand cmd = new SqlCommand("update registrationdetailstable set Phnum = '" + contact + "' ,Addres= '" + address + "' where email = '" + Session["Useremail"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
            }
            
            Response.Redirect("Details.aspx");
        }

        protected void DetailsView_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            DetailsView.ChangeMode(e.NewMode);
        }

        protected void ViewDetails_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            DetailsView.Visible = true;
            BindDetailsview();
        }

        protected void BookACar_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchForCars.aspx");
        }

        protected void GridViewDetails()
        {
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            using (SqlConnection con = new SqlConnection(s1))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select CarCode,Cartype,Location,Bookingdate from cardetails where email='" + Session["Useremail"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void ViewBookings_Click(object sender, EventArgs e)
        {
            DetailsView.Visible = false;
            GridView1.Visible = true;
            GridViewDetails();
        }
    }
}