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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            BindGridView();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void BindGridView()
        {
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            using (SqlConnection con = new SqlConnection(s1))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select CarCode,Cartype,Location,carstatus from cardetails", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex; // turn to edit mode
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1; //swicth back to default mode
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Accessing Edited values from the GridView
            string carstatus = ((Label)GridView1.Rows[e.RowIndex].Cells[3].FindControl("Labelcarstatus")).Text; //carstatus
            string carcode = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBoxCarCode")).Text; //carcode
            string cartype = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("TextBoxCartype")).Text; //cartype
            string Location = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("TextBoxLocation")).Text; //Location

            UpdateRecord(carstatus,carcode, cartype, Location); // call update method

            GridView1.EditIndex = -1; //Turn the Grid to read only mode

            BindGridView(); // Rebind GridView to reflect changes made

            Response.Write("Update Seccessful!");
        }
        private void UpdateRecord(string carstatus, string carcode, string cartype, string Location)
        {
            DataSet ds = new DataSet();
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            try
            {
                using (SqlConnection con = new SqlConnection(s1))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update cardetails set CarCode= " + carcode + "',Cartype=" + cartype + "',Location = " + Location + "',CarAvailability=" + carstatus+"'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert/Update Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
        }
        private void DeleteRecord(string ID)
        {
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            string sqlStatement = "DELETE FROM cardetails WHERE CarCode = @Id";

            try
            {
                using (SqlConnection connection = new SqlConnection(s1))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(sqlStatement, connection);
                    cmd.Parameters.AddWithValue("@Id", ID);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Deletion Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //get the ID of the selected row
            string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBoxCarCode")).Text; //carcode
            DeleteRecord(id); //call the method for delete

            BindGridView(); // Rebind GridView to reflect changes made
        }
    }
}