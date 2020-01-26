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
    public partial class HomePage1 : System.Web.UI.Page
    {
        public string cnstring = @"Data Source = DESKTOP - F6NJJNA; Initial Catalog = AppliedProject; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (GridView1.Rows.Count == 0 && GridView2.Rows.Count == 0)
            {
                Console.WriteLine("Inventory has no data- Please add Brands and Products.");
            }
            else
            {
               
            }
           /*string myquery = "select*from Brand";
            SqlConnection con = new SqlConnection(cnstring);
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
            con.Close();
            

          /*  using (SqlConnection sqlCon = new SqlConnection(cnstring))

            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * from Brand", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                sqlCon.Close();
            }
            */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBrand.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}