using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_SingUp(object sender, EventArgs e)
        {
            Page.Validate();
            SqlConnection sqlcon = new SqlConnection(@"Data Source=.;Initial Catalog=HotelManagementSystem;Integrated Security=True");
            try
            {
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                    string query = "insert into Login(UserName,Password) values('" + txtbox_UserId.Text + "','" + txtbox_Password.Text + "')";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = sqlcon;
                    cmd.ExecuteNonQuery();
                    txtbox_UserId.Text = "";
                    txtbox_Password.Text = "";
                    txtbox_ConfirmPassword.Text = "";
                }
            }
            catch(Exception ex)
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