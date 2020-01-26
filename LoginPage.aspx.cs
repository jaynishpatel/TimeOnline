using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ImpliedProject1
{
    
    public partial class LoginPage : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-F6NJJNA;Initial Catalog=AppliedProject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LoginRegistration where UserName =@username and Password=@password", con);
    cmd.Parameters.AddWithValue("@username", txtuname.Text);
            cmd.Parameters.AddWithValue("@password", txtpwd.Text);
    SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


    if (dt.Rows.Count > 0) 
            {
                Response.Redirect("HomePage.aspx");
}
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
            con.Close();
          //  Response.Redirect("HomePage.aspx");
            /*{
                SqlConnection con = new SqlConnection(cnstring);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {

                    string a = "insert into LoginRegistration(Username,Password) values('" + UsernameIdLogin.Text.ToString() + "','" + PasswordIdlogin.Text.ToString() + "')";
                    SqlCommand cmd = new SqlCommand(a, con);
                    cmd.ExecuteNonQuery();
                    Response.Write("connected succefully");
                }
            }*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}
