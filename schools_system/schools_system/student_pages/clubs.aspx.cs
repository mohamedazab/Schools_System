using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            String s1 = Request.QueryString["username"];


            Labelusername.Text = s1;
            var x = schools.check_in_high(s1);
            if(x==-1)
            {
                alreadyin.Text = " you are not a high school student come here when you grow up";
                alreadyin.Visible = true;

            }
            else {
                if (!IsPostBack)
            {
                grid(s1);
            }
          }



          
        }


        protected void grid(string s)
        {
            GridView1.DataSource = schools.display_a_club(s);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            alreadyin.Visible = false;

            alreadyin.Text = "  you are already registered in this club ";

            int index = GridView1.SelectedIndex;
            string clubID = GridView1.Rows[index].Cells[1].Text;

            int x = schools.join_a_club(Labelusername.Text, Int32.Parse(clubID));
            if (x == 1)
            {
                alreadyin.Text = "successful";

            }
            alreadyin.Visible = true;
        }
    }
}