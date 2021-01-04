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
    public partial class RoomsRate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CheckInDate = Session["CheckInDate"].ToString();
            string CheckOutDate = Session["CheckOutDate"].ToString();
            int Adults =Int32.Parse( Session["Adults"].ToString());
            int Children =Int32.Parse( Session["Children"].ToString());
            int Rooms = Int32.Parse(Session["Rooms"].ToString());
            int NumberOfRooms = (Adults + Children) / Rooms;
            SqlConnection sqlcon = new SqlConnection(@"Data Source =.; Initial Catalog = HotelManagementSystem; Integrated Security = True");
            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                {

                    sqlcon.Open();
                    string query = "SELECT RoomType,Rate from RoomInfo WHERE NoOfPerson=@Room";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                    sqlcmd.Parameters.AddWithValue("@Room", NumberOfRooms);
                    SqlDataReader dr = sqlcmd.ExecuteReader();
                    bool recordFound = dr.Read();
                    if (recordFound)
                    {
                        lbl_RoomDetails.Text = dr["RoomType"].ToString();
                        lbl_Rate.Text = dr["Rate"].ToString();
                        int totalPrice = NumberOfRooms * Int32.Parse(lbl_Rate.Text.ToString());
                        //byte[] bytes = (byte[])sqlcmd.ExecuteScalar();
                        //string strbase64 = Convert.ToBase64String(bytes);
                        //Image1.ImageUrl = "data:Image/jpeg;base64," + strbase64;

                        
                    }
                    dr.Close();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }
    }
}