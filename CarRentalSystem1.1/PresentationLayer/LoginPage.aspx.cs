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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserNameTextbox.Focus();
        }
        protected void Validation()
        {
            string output = "";
            string Actor = "";
            int j = 0;
            string s1 = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            SqlConnection con = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand("returnPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da = new SqlDataAdapter(cmd);
            SqlParameter param1 = new SqlParameter("@email", SqlDbType.VarChar, 40);
            param1.Value = UserNameTextbox.Text;
            cmd.Parameters.Add(param1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow myRow in ds.Tables[0].Rows)
            {
                output = myRow[0].ToString();
                if (output == PasswordTextbox.Text)
                {
                    foreach (DataRow Row in ds.Tables[0].Rows)
                    {
                        Actor = myRow[1].ToString();
                        Session["Useremail"] = UserNameTextbox.Text;
                        if (Actor == "user")
                        {
                            if (Session["Location"] != null)
                                Response.Redirect("BookACar.aspx");
                            else
                                Response.Redirect("Details.aspx");
                        }
                        else if (Actor == "admin")
                        {
                            Response.Redirect("AdminCarDetails.aspx");
                        }
                        else
                        {
                            Session["Useremail"] = null;
                            Response.Redirect("RegistrationPage.aspx");
                        }
                    }
                }
            }
            if (j == 0)
            {
                Session["Useremail"] = null;
                string javascript = "alert('Invalid Credentials!!!');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickEventScript", javascript, true);
                UserNameTextbox.Text = "";
                PasswordTextbox.Text = "";
                //Response.Redirect("RegistrationPage.aspx");
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            if (UserNameTextbox.Text != "" && PasswordTextbox.Text != "")
            {
                //Validate username and password
                Validation();
            }
            else
            {
                Response.Write("<script>alert('Required fields cannot be left blank')</script>");
            }
        }

        
    }
}