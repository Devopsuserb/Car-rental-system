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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailID.Focus();
        }
        protected void ChangePassword()
        {
           DataSet ds = new DataSet();
           string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
           using (SqlConnection con = new SqlConnection(s1))
           {
               con.Open();
               SqlCommand cmd;
               string p = NewPassword.Text;
               string e = EmailID.Text;
               string command = "update registrationdetailstable set passwrd='" + NewPassword.Text + "' where email='" + EmailID.Text + "'";
               cmd = new SqlCommand(command, con);
               cmd.CommandType = CommandType.Text;
               cmd.ExecuteNonQuery();
           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (NewPassword.Text != "" && RetypeNewPassword.Text != "" && EmailID.Text != "")
            {
                if (RetypeNewPassword.Text == NewPassword.Text)
                {
                    string javascript = "alert('Passwords Changed successfully!!!');";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickEventScript", javascript, true);
                    ChangePassword();
                    Response.Redirect("LoginPage.aspx");
                }
                else
                    Response.Write("<script>alert('Passwords are not matching')</script>");
            }
            else
            {
                Response.Write("<script>alert('Required fields cannot be left blank')</script>");
            }
            
        }
    }
}