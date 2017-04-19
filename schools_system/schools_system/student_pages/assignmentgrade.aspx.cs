using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

            String username = Request.QueryString["username"];
            String code = Request.QueryString["coursecode"];
            String name = Request.QueryString["coursename"];

            Labelusername.Text = username;
            Labelcourse.Text = name;
            Labelcode.Text = code;
            Labelusername.Visible = true;
            Labelcode.Visible = true;
            Labelcourse.Visible = true;

            if (!IsPostBack)
            {
                Grid(username, code);
            }

        }
        protected void Grid(String username, String course)
        {

            

            GridView1.DataSource = schools.check_my_grades_in_course(username, course);
                  GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}