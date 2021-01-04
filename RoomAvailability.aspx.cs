using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class RoomAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            Page.Validate();
            Session["CheckInDate"] = txt_CheckInDate.Text;
            Session["CheckOutDate"] = txt_CheckOutDate.Text;
            Session["Adults"] = ddl_Adult.SelectedItem.Text;
            Session["Children"] = ddl_Children.SelectedItem.Text;
            Session["Rooms"] = ddl_Room.SelectedItem.Text;
            Response.Redirect("RoomsRate.aspx");
            //Response.Redirect("RoomsRate.aspx?CheckInDate=" + txt_CheckInDate.Text);          
            //Response.Redirect("RoomsRate.aspx?CheckOutDate=" + txt_CheckOutDate.Text);
            //Response.Redirect("RoomsRate.aspx?Adults=" + ddl_Adult.SelectedItem.Text);
            //Response.Redirect("RoomsRate.aspx?Children=" + ddl_Children.SelectedItem.Text);
            //Response.Redirect("RoomsRate.aspx?Rooms=" + ddl_Room.SelectedItem.Text);
        }
    }
}