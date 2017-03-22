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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustomerName.Focus();
                CustomerGender.Items[0].Selected = true;
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Password.Text != "" && RetypePassword.Text != ""&& CustomerEmailId.Text != ""&& CustomerContactNumber.Text != "")
            {
                if (RetypePassword.Text == Password.Text)
                {
                    Registration();
                    if (Session["Location"] != null)
                        Response.Redirect("BookACar.aspx");
                    else
                        Response.Redirect("Details.aspx");

                }
                else
                    Response.Write("<script>alert('Passwords are not matching')</script>");
            }
            else
            {
                Response.Write("<script>alert('Required fields cannot be left blank')</script>");
            }
        }
        protected void Registration()
        {
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            try
            {
                using (SqlConnection con = new SqlConnection(s1))
                {
                    SqlCommand cmd = new SqlCommand("abc", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da = new SqlDataAdapter(cmd);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter param1 = new SqlParameter("@Name", SqlDbType.VarChar, 30);
                    param1.Value = CustomerName.Text;
                    SqlParameter param2 = new SqlParameter("@Gender", SqlDbType.VarChar, 9);
                    param2.Value = CustomerGender.SelectedValue;
                    SqlParameter param3 = new SqlParameter("@email", SqlDbType.VarChar, 40);
                    param3.Value = CustomerEmailId.Text;
                    SqlParameter param4 = new SqlParameter("@passwrd", SqlDbType.VarChar, 30);
                    param4.Value = Password.Text;
                    SqlParameter param5 = new SqlParameter("@Phnum", SqlDbType.VarChar, 20);
                    param5.Value = CustomerContactNumber.Text;
                    SqlParameter param6 = new SqlParameter("@Addres", SqlDbType.VarChar, 400);
                    param6.Value = CustomerAddress.Text;
                    SqlParameter param7 = new SqlParameter("@Actor", SqlDbType.VarChar, 10);
                    param7.Value = "user";
                    cmd.Parameters.Add(param1);
                    cmd.Parameters.Add(param2);
                    cmd.Parameters.Add(param3);
                    cmd.Parameters.Add(param4);
                    cmd.Parameters.Add(param5);
                    cmd.Parameters.Add(param6);
                    cmd.Parameters.Add(param7);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Registeration successfully')</script>");
                }
            }
            catch (Exception)
            {
                string javascript = "alert('EmailID already registered!!!');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickEventScript", javascript, true);
            }
        }
        protected void CustomerName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}