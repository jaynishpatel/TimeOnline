using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ImpliedProject1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-F6NJJNA;Initial Catalog=AppliedProject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            


            Random ra = new Random();
            int noc = ra.Next(6, 10);
            string cap = "";
            int tot = 0;
            do
            {
                int ch = ra.Next(48, 123);
                if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
                {
                    cap = cap + (char)ch;
                    tot++;
                    if (tot == noc)
                        break;
                }

            }
            while (true);
            CaptchaLabeld.Text = cap;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into LoginRegistration(UserName,Password,ConfirmPassword) values('" + UsernameId.Text.ToString() + "','" + PasswordId.Text.ToString() + "','" + ConfirmPasswordId.Text.ToString() + "')";
            SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                Response.Write("connected succefully");
                
            }
            Response.Redirect("LoginPage.aspx");
        }
    }
}