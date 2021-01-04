using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Login(object sender, EventArgs e)
        {
            Page.Validate();
            SqlConnection sqlcon = new SqlConnection(@"Data Source=.;Initial Catalog=HotelManagementSystem;Integrated Security=True");
            try
            {
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                    string query = "SELECT COUNT(1) FROM Login WHERE UserName='"+txtbox_UserId.Text+"' AND Password='"+txtbox_Password.Text +"'";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlcon);                    
                    SqlDataAdapter ada = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    ada.SelectCommand = sqlcmd;
                    ada.Fill(ds, "Login");
                    int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                    if(ds.Tables[0].Rows.Count > 0)
                    {
                        MessageBox.Show("Correct");
                    }
                    else
                    {
                        MessageBox.Show("Username or Password is incorrect...");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                sqlcon.Close();
            }

        }
    }
}