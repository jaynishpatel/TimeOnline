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
    public partial class AddProduct : System.Web.UI.Page

    {
        public string cnstring = "Data Source=DESKTOP-F6NJJNA;Initial Catalog=AppliedProject;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(cnstring);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {
                    string a = "insert into Product(Brand, ProductId, SalesPrice, ProductName, AvailableQuantity) values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + DropDownList1.Text.ToString() + "')";
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
                    GridView1.DataBind();

                    con.Close();


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProduct.aspx");
        }
    }
}