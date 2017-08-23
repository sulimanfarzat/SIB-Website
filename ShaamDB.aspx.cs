using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Net.Sockets;



public partial class ShaamDB : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings[@"constr"].ConnectionString;
    //string con = @"server=160.153.129.236;user id=shaam;database=ShaamDB;persistsecurityinfo=True;password=Randa@sib123";
    int contractID = 0;

 
    //GET
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData();
        }
    }

    public void BindData ()

    {
        MySqlConnection MySqlcon = new MySqlConnection(con);
        MySqlcon.Open();

        MySqlCommand cmd = new MySqlCommand("select * from contract_data", MySqlcon);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
     
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cmd.Dispose();
        MySqlcon.Close();

    }


    //INSERT
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MySqlConnection MySqlcon = new MySqlConnection(con))
        {
            MySqlcon.Open();
            MySqlCommand MySqlCmd = new MySqlCommand("AddEditContract", MySqlcon);
            MySqlCmd.CommandType = CommandType.StoredProcedure;
            MySqlCmd.Parameters.AddWithValue("_id", contractID);
            MySqlCmd.Parameters.AddWithValue("_date_contract", TextBox1.Text.Trim());
            MySqlCmd.Parameters.AddWithValue("_first_name", TextBox2.Text.Trim());
            MySqlCmd.Parameters.AddWithValue("_last_name", TextBox3.Text.Trim());
            MySqlCmd.Parameters.AddWithValue("_kind", TextBox4.Text.Trim());


            MySqlCmd.ExecuteNonQuery();
           //MessageBox.Show("Save Data");

        }
    }

   
}