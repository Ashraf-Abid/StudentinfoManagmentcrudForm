using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                LoadRecord();
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-B9CG4TO0;Initial Catalog=CrudDb;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into StudentInfoTable values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox3.Text)+"','"+TextBox4.Text+"')",con);
            comm.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
            con.Close();
            LoadRecord();
        }
        void LoadRecord() {
            
            SqlCommand comm = new SqlCommand("select * from StudentInfoTable", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("Update StudentInfoTable set StudentName='"+TextBox2.Text+"',Address='"+DropDownList1.SelectedValue+"',Age='"+double.Parse(TextBox3.Text)+"',Contact='"+TextBox4.Text+"' where StudentId='"+int.Parse(TextBox1.Text)+"'",con);
            comm.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            con.Close();
            LoadRecord();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete StudentInfoTable  where StudentId='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            con.Close();
            LoadRecord();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfoTable  where StudentId='" + int.Parse(TextBox1.Text)+"'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}