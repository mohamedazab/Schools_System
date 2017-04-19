using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String s = Request.QueryString["username"];
          //  Labelusername.Text = s;
            Labelusername.Text = s;
            Labelusername.Visible = true;


            if (!IsPostBack)
            {
                grid(s);
            }

        }

        protected void grid(string s)
        {
            ////////////////////////////////////

            GridView1.DataSource = schools.list_my_courses(s);
            GridView1.DataBind();

           

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            string courseID = GridView1.Rows[index].Cells[1].Text;
            string CourseName= GridView1.Rows[index].Cells[2].Text; 
          


            Response.Redirect("~/Student_pages/coursechoose.aspx?username=" + Labelusername.Text + "&coursecode=" + courseID+ "&coursename=" + CourseName);
        }

        protected void Button1_Click(object sender, EventArgs e)//logout
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

    }
}