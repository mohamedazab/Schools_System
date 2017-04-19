using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Request["Value"] != null)
                {
                  string  x = Request["Value"].ToString();
                    Label1.Text = x;
                    Label1.Visible = true;
                }
            }

        }


        //replace all label 1 .text with the new string ?



        protected void Buttonactivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/activities.aspx?username=" + Label1.Text);

        }

        protected void Button5_Click(object sender, EventArgs e)//logout
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

        protected void Buttonprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/updateinfo.aspx?username=" +Label1.Text);
        }

        protected void Buttonmycourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/allcourses.aspx?username=" + Label1.Text);

        }


        protected void Button4_Click(object sender, EventArgs e)//clubs
        {
            Response.Redirect("~/Student_pages/clubs.aspx?username=" + Label1.Text);

        }
    }
}