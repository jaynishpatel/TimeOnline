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
    public partial class AddBrand : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-F6NJJNA;Initial Catalog=AppliedProject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AddBrandButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into Brand(BrandId, BrandName) values('" + BrandId.Text.ToString() + "','" + BrandName.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                

            
                string myquery = null;
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                //DataSet ds = new DataSet();
                //da.Fill(ds);
                //GridView3.AutoGenerateColumns = false;
              //  GridView3.DataSource = ds;
                GridView3.DataBind();

                con.Close();


            }
        }

        protected void UpdateBrandButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBrand.aspx");
        }
    }
}